import json
from pathlib import Path
from typing import Final

RP_ROOT: Final[Path] = Path(__file__).parents[1] / "TF2 Resource Pack - By Nicoder"

classes = ['spy', 'sniper', 'scout', 'soldier', 'demoman', 'heavy', 'pyro', 'engineer', 'medic']

def make_case(cl):
    team_dependent = cl in ['spy', 'scout', 'soldier', 'engineer']
    if True:
        return {
            "type": "minecraft:select",
            "property": "minecraft:custom_model_data",
            "index": 1,
            "cases": [
                {
                    "when": "red",
                    "model": {
                        "type": "minecraft:condition",
                        "property": "minecraft:custom_model_data",
                        "index": 0,
                        "on_true": {
                            "type": "minecraft:model",
                            "model": f"tf2:head/uber/{cl}_red"
                        },
                        "on_false": {
                            "type": "minecraft:model",
                            "model": f"tf2:head/{cl}_red" if team_dependent else f"tf2:head/{cl}"
                        }
                    }
                },
                {
                    "when": "blu",
                    "model": {
                        "type": "minecraft:condition",
                        "property": "minecraft:custom_model_data",
                        "index": 0,
                        "on_true": {
                            "type": "minecraft:model",
                            "model": f"tf2:head/uber/{cl}_blu"
                        },
                        "on_false": {
                            "type": "minecraft:model",
                            "model": f"tf2:head/{cl}_blu" if team_dependent else f"tf2:head/{cl}"
                        }
                    }
                }
            ]
        }

def main():
    d = {
        "model": {
            "type": "minecraft:select",
            "property": "minecraft:custom_model_data",
            "index": 0,
            "cases": [
                {
                    "when": cl,
                    "model": make_case(cl)
                }
                for cl in classes
            ]
        }
    }

    q = {
        "model": {
            "type": "minecraft:select",
            "property": "minecraft:custom_model_data",
            "cases": [
                {
                    "when": l,
                    "model": {
                        "type": "minecraft:model",
                        "model": f"tf2:item/{l}/icon"
                    }
                }
            for l in classes],
            "fallback": {
                "type": "minecraft:model",
                "model": "tf2:item/logo"
            }
        }
    }

    (RP_ROOT / 'assets' / 'tf2' / 'items' / 'misc' / 'head.json').write_text(json.dumps(d, indent=4))
    (RP_ROOT / 'assets' / 'tf2' / 'items' / 'misc' / 'choose_class.json').write_text(json.dumps(q, indent='\t'))

if __name__ == "__main__":
    main()