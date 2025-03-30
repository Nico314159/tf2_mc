from pathlib import Path
from typing import Final
import json

DP_ROOT: Final[Path] = Path(__file__).parents[1] / "TF2 Datapack - By Nicoder"
RP_ROOT: Final[Path] = Path(__file__).parents[1] / "TF2 Resource Pack - By Nicoder"

models_dir = RP_ROOT / 'assets' / 'tf2' / 'models' / 'item'
loot_dir = DP_ROOT / "data" / "tf2" / "loot_table" / "class"

def is_CMD_function(f): 
    return f.get("function") == "minecraft:set_custom_model_data"

def has_team_based_condition(f):
    return any("tf2.team" in c.get('scores') for c in f.get("conditions"))

def get_item_model(loot_functions):
    for f in loot_functions:
        if f.get("function") == "minecraft:set_components":
            if "minecraft:item_model" in f.get("components"):
                return f["components"]["minecraft:item_model"]


def main():

    for loot_path in loot_dir.rglob("*.json"):
       with open(loot_path) as lt:
            loot_json = json.load(lt)
            try:
                loot_functions = loot_json["pools"][0]["entries"][0]["functions"]
                item_model = get_item_model(loot_functions)
                if item_model is None:
                    continue
                team_specific = any(is_CMD_function(f) and has_team_based_condition(f) for f in loot_functions)
            except KeyError:
                continue


            item_model_definition = {"model": {}}
            model_name_root = item_model.replace('weapon', 'item')

            if team_specific:
                item_model_definition["model"] =  {
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

            output_path = (RP_ROOT / 'assets' / 'tf2' / 'items' / item_model.replace('tf2:', '')).with_suffix('.json')
            output_path.parent.mkdir(parents=True, exist_ok=True)
            with open(output_path, 'w') as output_file:
                if team_specific:
                    output_file.write(json.dumps(item_model_definition, indent=4))
                else:
                    output_file.write(json.dumps(item_model_definition))



if __name__ == "__main__":
    main()