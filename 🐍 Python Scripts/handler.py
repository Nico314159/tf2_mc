from __future__ import annotations
from collections import defaultdict
from collections.abc import MutableMapping
from enum import Enum
from functools import reduce
import json
import copy
from operator import or_
from pathlib import Path
from typing import cast, Final

DP_ROOT: Final[Path] = Path(__file__).parents[1] / "TF2 Datapack - By Nicoder"
RP_ROOT: Final[Path] = Path(__file__).parents[1] / "TF2 Resource Pack - By Nicoder"

# HACK
import sys
sys.path.append(str(DP_ROOT / 'src'))
from item_script import VARIATIONS, MAX_CMD, unpack_CMD # type: ignore
del sys

Class = Enum("Class", ["SPY", "SNIPER", "SCOUT", "SOLDIER", "DEMOMAN", "HEAVY", "PYRO", "ENGINEER", "MEDIC"])
loot_dir = DP_ROOT / "data" / "tf2" / "loot_table" / "class"
models_dir = RP_ROOT / "assets" / "minecraft" / "models" / "item"

def get_parent_loot_table_name(_json) -> str:
    entries = _json["pools"][0]['entries']
    assert len(entries) == 1
    entry = entries[0]
    match entry['type']:
        case "minecraft:loot_table":
            return entry["value"]

        case "minecraft:item":
            return entry["name"]

        case _: return ""

def determine_models_to_edit(_json) -> list[Path]:
    parent_name = get_parent_loot_table_name(_json)

    output: list[Path] = []
    
    if parent_name == "":
        return output

    if parent_name.startswith("minecraft"):
        suffix = parent_name.split(":")[1]
        if suffix == "iron_leggings":
            return output
        output.append(models_dir / f"{suffix}.json")

    elif parent_name.startswith("tf2"):
        match (suffix := parent_name.split(":")[1]):
            case "crossbow_base":
                output.append(models_dir / "crossbow.json")
            case "melee_base":
                output.append(models_dir / "snowball.json")
                output.append(models_dir / "brick.json")
            case "sniper_base":
                output.append(models_dir / "crossbow.json")
                output.append(models_dir / "spyglass_in_hand.json")
            case _:
                with open(loot_dir.parent / f"{suffix}.json") as f: 
                    output = determine_models_to_edit(json.load(f))

    return output

def determine_custom_model_data(_json) -> list[int]:
    entry = _json["pools"][0]['entries'][0]
    if "functions" not in entry:
        return []
    functions = entry["functions"]
    return [
        cast(int, f.get("components", {}).get("minecraft:custom_model_data"))
        for f in functions
        if f.get("function", None) == "minecraft:set_components" 
        if "minecraft:custom_model_data" in f.get("components", {})
    ]


def blockbench_style_JSON(obj, indentation = "\t") -> str:

    def new_line(tabs):
        return f'\n{indentation * tabs}'

    def escape(string: str):
        return string.replace('\\', '\\\\').replace('"', '\\"').replace('\n', '\\n').replace('\r\n', '\\n').replace('\t', '\\t')

    def handle_var(o, tabs, force_multiline: bool = False) -> str:
        match o:
            case str(): 
                return json.dumps(o)
            case bool(): 
                return str(o).lower()
            case None | float('inf') | float('-inf'): 
                return 'null'
            case int() | float(): 
                return f'{round(o, 5)}'
            case list(): 
                return handle_list(o, tabs)
            case dict(): 
                return handle_dict(o, tabs, force_multiline)
            case _: return ''
    
    def handle_list(o, tabs):
        multiline = any(isinstance(item, dict) for item in o)
        if sum(len(str(item)) + 3 for item in o) > 140:
            multiline = True
        
        items = [handle_var(item, tabs + 1) for item in o]
        if not multiline:
            return '[' + ', '.join(items) + ']'
        else:
            out = (',' + new_line(tabs)).join(items)
            return f'[{new_line(tabs)}{out}{new_line(tabs - 1)}]'

    def handle_dict(o: dict, tabs, multiline: bool = False):
        multiline = multiline or (sum(len(str(item)) + 3 for item in o.items()) > 150)

        items = [f'"{escape(key)}": {handle_var(value, tabs + int(multiline), key != "predicate")}' for key, value in o.items()]
        
        if multiline:
            out = (',' + new_line(tabs)).join(items)
            return f'{{{new_line(tabs) if items else ""}{out}{new_line(tabs - 1) if items else ""}}}'
        
        else:
            return '{' + (', ').join(items) + '}'

    return handle_var(obj, 1)

def main():

    SLOT_NAMES: Final = "primary", "secondary", "melee", "disguise_kit", "watch"
    weapons_dict: dict[Path, dict[int, list[str]]] = defaultdict(lambda: defaultdict(list))
    disguises_dict: dict[Path, dict[int, list[str]]] = defaultdict(lambda: defaultdict(list))

    for loot_path in loot_dir.rglob("*.json"):
        with open(loot_path) as lt:
            loot_json = json.load(lt)

            model_paths = determine_models_to_edit(loot_json)

            nums = determine_custom_model_data(loot_json)

        if len(nums) == 0 or len(model_paths) == 0:
            continue

        for model_path in model_paths:
            for num in nums:
                class_name = loot_path.relative_to(loot_dir).parent.name
                weapon_name = loot_path.stem            
                slot = ["primary", "secondary", "melee", "disguise_kit", "watch"][unpack_CMD(num)[1]]

                if str(class_name) == "sniper" and slot == "primary" and model_path.stem == "spyglass_in_hand":
                    weapon_name += "_scope"

                if len(nums) == 2:
                    team = (num // VARIATIONS) % 3
                    weapon_name += "_red" if team == 1 else \
                                   "_blu" if team == 2 else ""

                weapons_dict[model_path][num] = ["tf2:item", class_name, slot, weapon_name]
                if str(class_name) == "spy" and slot == "melee":
                    weapons_dict[model_path][num+1] = ["tf2:item", class_name, slot, weapon_name + "_raised"]
                
    for model_path in weapons_dict:

        # FIXME: still pretty ugly - idk if there's a better way
        for key_1p, value_1p in (weapons_dict[model_path]).items():
            if value_1p[1] == "spy":
                for key_3p, value_3p in reduce(or_, weapons_dict.values()).items():
                    if value_3p[3] == "butterfly_knife_raised":
                        continue
                    if value_1p[2] == value_3p[2] or (value_1p[2] == "disguise_kit" and value_3p[2] == "primary"):
                        disguises_dict[model_path][key_1p * MAX_CMD + key_3p] = ["tf2:disguise", value_3p[2], f'{value_1p[3]}_as_{value_3p[3]}']

        with open(model_path, mode="r+") as m:
            try:
                model_json = json.load(m)
            except:
                # TODO: make it know how to replicate other keys if they get wiped too
                model_json = {}
                        
            flat_weapons = {k: '/'.join(v) for (k, v) in sorted(weapons_dict[model_path].items())}
            flat_disguises = {k: '/'.join(v) for (k, v) in sorted(disguises_dict[model_path].items())}

            # print(flat_weapons | flat_disguises)

            model_json["overrides"] = [{"predicate": {"custom_model_data": k}, "model": v} for (k, v) in (flat_weapons | flat_disguises).items()]

            m.seek(0)
            m.truncate(0)
            m.write(blockbench_style_JSON(model_json, indentation=" " * 4))
                    
if __name__ == "__main__":
    main()

                    
                




            

