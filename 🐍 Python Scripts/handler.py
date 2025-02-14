from pathlib import Path
from typing import Final
import json

DP_ROOT: Final[Path] = Path(__file__).parents[1] / "TF2 Datapack - By Nicoder"
RP_ROOT: Final[Path] = Path(__file__).parents[1] / "TF2 Resource Pack - By Nicoder"

models_dir = RP_ROOT / 'assets' / 'tf2' / 'models' / 'item'
loot_dir = DP_ROOT / "data" / "tf2" / "loot_table" / "class"

def main():

    for loot_path in loot_dir.rglob("*.json"):
       with open(loot_path) as lt:
            loot_json = json.load(lt)
            try:
                loot_functions = loot_json["pools"][0]["entries"][0]["functions"]
                relevant = [f["components"]["minecraft:item_model"] for f in loot_functions if f.get("function") == "minecraft:set_components"]
            except KeyError:
                continue
            if len(relevant) != 1:
                continue

            item_model_definition = {
                "model": {
                    "type": "minecraft:model",
                    "model": relevant[0].replace(':', ':item/')
                }
            }
            
            output_path = (RP_ROOT / 'assets' / 'tf2' / 'items' / relevant[0].replace('tf2:', '')).with_suffix('.json')
            output_path.parent.mkdir(parents=True, exist_ok=True)
            with open(output_path, 'w') as output_file:
                output_file.write(json.dumps(item_model_definition))



if __name__ == "__main__":
    main()