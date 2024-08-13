import json
import ast
from collections import Counter
from enum import Enum
from typing import TYPE_CHECKING
if TYPE_CHECKING:
    def emit(command: str): ...

true = True
false = False

Class = Enum("Class", ["SPY", "SNIPER", "SCOUT", "SOLDIER", "DEMOMAN", "HEAVY", "PYRO", "ENGINEER", "MEDIC"])

unlock_counter = Counter()
# _sentinel = object()

def minify_no_key_quotes(obj) -> str:
    def make_key(string: str):
        return string if string.isidentifier() else json.dumps(string)

    def handle(o) -> str:
        match o:
            case str():
                return f"'{o}'" if o.isidentifier() else json.dumps(o)
            case tuple():
                return handle(list(o))
            case list(): 
                items = (handle(item) for item in o)
                return '[' + (',').join(items) + ']'
            case dict(): 
                items = (f'{make_key(key)}:{handle(value)}' for key, value in o.items())
                return '{' + (',').join(items) + '}'
            case _: 
                return json.dumps(o)

    return handle(obj)

def make_weapon(
    class_id,
    slot,
    name: str, 
    *, 
    display_name = None,
    base_item = None, 
    retina = None,
    bullets = None,
    spread = None,
    attributes = None,
    projectile = None, 
    controls = None, 
    team_specific = False,
    cmd_bump = 0,
    real = None,
    extra = None
):

    if not isinstance(class_id, Class): 
        raise Exception(f'{class_id} is not a class')

    class_num = class_id.value
    key = (class_num, slot)

    if controls is None:
        controls = dict()
    if "main_fire" not in controls:
        controls["main_fire"] = True
    if "alt_fire" not in controls:
        controls["alt_fire"] = False
    if "reload" not in controls:
        controls["reload"] = int(slot != 2)
    assert len(controls) == 3

    if display_name is None:
        display_name = {"text": name, "color": "gray", "italic": True}
    elif isinstance(display_name, str):
        display_name = {"text": display_name, "color": "gray", "italic": True}

    if base_item is None and slot == 2:
        base_item = "tf2:melee_base" 
    elif base_item is None:
        base_item = "tf2:crossbow_base"
    if extra is None:
        extra = []

    if projectile is None:
        if bullets is None or len(bullets) == 0: 
            bullets = [1, 1, 0]
        elif len(bullets) == 2:
            bullets.append(0)
        
        if spread is None or len(spread) == 0:
            spread = [0, 0]
        elif len(spread) == 1:
            spread *= 2

        retina = {
            "HorizontalCount": bullets[0], 
            "VerticalCount": bullets[1], 
            "CenteredCount": bullets[2],   
            "EndpointEntity": False, 
            "TargetEntities": True,
            "SpreadFactor": spread,
            "MaxRecursionDepth": 5 + 495 * (slot != 2)
        }

    custom_data = {}
    if retina is not None: 
        custom_data["retina"] = retina
    custom_data["attributes"] = attributes
    if projectile is not None: 
        custom_data["projectile"] = projectile
    custom_data["controls"] = controls

    if cmd_bump:
        unlock_counter[key] -= 1

    serial: int = unlock_counter[key]
    SLOT_MAX = 10
    assert serial < SLOT_MAX, "Can't have more than 10 weapons for class {class_id.name} in slot {slot}"
    
    CMD: int = class_num
    CMD *= 5
    CMD += slot
    CMD *= SLOT_MAX
    CMD += serial
    CMD *= 3

    ARBITRARY_VARIATIONS = 5
    assert cmd_bump < ARBITRARY_VARIATIONS, f"cmd_bump must be less than {ARBITRARY_VARIATIONS}"
    CMD *= ARBITRARY_VARIATIONS
    CMD += cmd_bump

    unlock_counter[key] += 1

    model_components = []
    if team_specific:
        model_components = [
            {
                "function": "minecraft:set_components",
                "components": {"minecraft:custom_model_data": CMD + (team * ARBITRARY_VARIATIONS)},
                "conditions": [
                    { 
                        "condition": "minecraft:entity_scores",
                        "entity": "this", "scores": {"tf2.team": team} 
                    }
                ]
            } 
        for team in (1, 2)]
    else:
        model_components = [
            {
                "function": "minecraft:set_components",
                "components": {"minecraft:custom_model_data": CMD}
            }
        ]
        
    if base_item in {"tf2:crossbow_base", "minecraft:crossbow"}:
        for temp in model_components:
            temp["components"] |= {
                "minecraft:unbreakable": {"show_in_tooltip": False}
            }

    if base_item.startswith("minecraft:") or ":" not in base_item:
        root = {
            "type": "minecraft:item",
            "name": base_item,
        }
    else:
        root = {
            "type": "minecraft:loot_table",
            "value": base_item,
        }

    functions = model_components
    if display_name is not False:
        functions.append({"function": "minecraft:set_name", "name": display_name})

    if attributes is None or len(attributes) == 0:
        custom_data = {}
    if key is not None:
        custom_data |= {"key": int(str(key[0]) + str(key[1]))}
    if isinstance(real, bool):
        custom_data |= {"kind": 'real' if real else 'fake'}

    snbt = minify_no_key_quotes(custom_data)
    
    if extra is None:
        extra = []
    for item in extra:
        if isinstance(item, dict) and item.get("function") == "minecraft:set_custom_data":
            tag = item.get("tag")
            if isinstance(tag, str) and tag.startswith("{") and tag.endswith("}"):
                snbt = snbt[:-1] + "," + tag[1:]
                continue

        functions.append(item)

    functions.append(
        {"function": "minecraft:set_custom_data", "tag": snbt}
    )

    loot = {
        "pools": [
            {
                "rolls": 1,
                "entries": [ 
                    {**root, "functions": functions} 
                ]
            }
        ]
    }

    loot_path = str(class_id).lower() + "." + name.lower().replace(" ", "_")

    emit(f'new loot_table({loot_path}) {json.dumps(loot)}')
