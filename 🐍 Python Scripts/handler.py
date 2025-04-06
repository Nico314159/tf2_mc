from pathlib import Path
from typing import Final
import json

DP_ROOT: Final[Path] = Path(__file__).parents[1] / "TF2 Datapack - By Nicoder"
RP_ROOT: Final[Path] = Path(__file__).parents[1] / "TF2 Resource Pack - By Nicoder"

models_dir = RP_ROOT / 'assets' / 'tf2' / 'models' / 'item'
loot_dir = DP_ROOT / "data" / "tf2" / "loot_table" / "class"

def is_CMD_function(f) -> bool: 
    return f.get("function") == "minecraft:set_custom_model_data"

def has_team_based_condition(f):
    return any("tf2.team" in c.get('scores') for c in f.get("conditions"))

def get_item_model(loot_functions):
    for f in loot_functions:
        if f.get("function") == "minecraft:set_components":
            if "minecraft:item_model" in f.get("components"):
                assert isinstance(s := f["components"]["minecraft:item_model"], str)
                return s
    return ''

type AdHoc = dict[str, list[tuple[str, dict, bool]]]
def create_all_models_dict() -> AdHoc:
    all_models_dict: AdHoc = {}
    for loot_path in loot_dir.rglob("*.json"):
        with open(loot_path) as lt:
            loot_json = json.load(lt)
            try:
                loot_functions = loot_json["pools"][0]["entries"][0]["functions"]
                item_model = get_item_model(loot_functions)
                if item_model is None:
                    continue
                if not item_model.startswith("tf2:weapon"):
                    continue
                team_specific = any(is_CMD_function(f) and has_team_based_condition(f) for f in loot_functions)
            except KeyError:
                continue

            item_model_definition = {"model": {}}
            model_name_root = item_model.replace('weapon', 'item')
            # print(model_name_root)

            class_and_slot = '/'.join(model_name_root.split('/')[1:3])
            if class_and_slot not in all_models_dict:
                all_models_dict[class_and_slot] = []

            indent: int | None = 4
            if team_specific:
                item_model_definition["model"] = {
                    "type": "minecraft:select",
                    "property": "minecraft:custom_model_data",
                    "index": 0,
                    "cases": [
                        {
                            "when": team,
                            "model": {
                                "type": "minecraft:model",
                                "model": f"{model_name_root}_{team}"
                            }
                        } for team in ('red', 'blu')
                    ]
                }
            elif "sniper/primary" in item_model:
                item_model_definition["model"] = {
                    "type": "minecraft:condition",
                    "property": "minecraft:custom_model_data",
                    "on_true": {
                        "type": "minecraft:model",
                        "model": f"{model_name_root}_scope"
                    },
                    "on_false": {
                        "type": "minecraft:model",
                        "model": model_name_root
                    }
                }
            elif "spy/melee" in item_model:
                item_model_definition["model"] = {
                    "type": "minecraft:condition",
                    "property": "minecraft:custom_model_data",
                    "on_true": {
                        "type": "minecraft:model",
                        "model": f"{model_name_root}_raised"
                    },
                    "on_false": {
                        "type": "minecraft:model",
                        "model": model_name_root
                    }
                }
            else:
                item_model_definition["model"] = {
                    "type": "minecraft:model",
                    "model": model_name_root
                }
                indent = None

            all_models_dict[class_and_slot].append((model_name_root, item_model_definition, team_specific))
    return all_models_dict

all_models_dict = create_all_models_dict()


def is_disguisable_slot(class_and_slot: str) -> bool:
    return class_and_slot.split('/')[0] == 'spy' \
       and class_and_slot.split('/')[1] != 'watch'

def corresponding_slot(class_and_slot: str, new_class: str) -> str:
    l = class_and_slot.split('/')
    if l[1] not in {'primary', 'secondary', 'melee'}:
        l[1] = 'primary'
    return new_class + '/' + l[1]


def write_models_to_files(all_models_dict: AdHoc) -> None:
    for (class_and_slot, weapons_list) in all_models_dict.items():
        for (i, (m0, m1, _)) in enumerate(weapons_list):

            output_path = (RP_ROOT / 'assets' / 'tf2' / 'items' / 'weapon' / m0.replace('tf2:item/', '')).with_suffix('.json')
            output_path.parent.mkdir(parents=True, exist_ok=True)

            # print(f"class_and_slot = {class_and_slot}")

            if is_disguisable_slot(class_and_slot):
                try: 
                    assert m1['model']['type'] == 'minecraft:model'
                    
                    undisguised_model =  m1['model']['model']
                    def disguised_model(class_name: str):
                        disguised_root = all_models_dict[corresponding_slot(class_and_slot, class_name)][i][0]
                        if all_models_dict[corresponding_slot(class_and_slot, class_name)][i][2]:
                            return {
                                "type": "minecraft:select",
                                "property": "minecraft:custom_model_data",
                                "index": 1,
                                "cases": [
                                    {
                                        "when": f"disguise_{team}",
                                        "model": {
                                            "type": "minecraft:model",
                                            "model": f"{disguised_root}_{team}"
                                        }
                                    } for team in ('red', 'blu')
                                ]
                            }
                        else:
                            return {
                                "type": "minecraft:model",
                                "model": disguised_root
                            }


                    m1 = {
                        "model": {
                            "type": "minecraft:select",
                            "property": "minecraft:custom_model_data",
                            "index": 0,
                            "cases": [
                                {
                                    "when": f"disguise_{class_name}",
                                    "model": {
                                        "type": "minecraft:condition",
                                        "property": "minecraft:view_entity",
                                        "on_true": {
                                            "type": "minecraft:model",
                                            "model": undisguised_model
                                        },
                                        "on_false": disguised_model(class_name)
                                    }
                                } for class_name in ('spy', 'sniper', 'scout', 'soldier', 'demoman', 'heavy', 'pyro', 'engineer', 'medic')
                            ],
                            "fallback": {
                                "type": "minecraft:model",
                                "model": undisguised_model
                            }
                        }
                    }

                except AssertionError: 
                    print(NotImplemented)
                    

                

            indent = None if m1["model"]["type"] == "minecraft:model" else 4
                
            with open(output_path, 'w') as output_file:
                output_file.write(json.dumps(m1, indent=indent))


def main():
    write_models_to_files(all_models_dict)


    
    


if __name__ == "__main__":
    main()