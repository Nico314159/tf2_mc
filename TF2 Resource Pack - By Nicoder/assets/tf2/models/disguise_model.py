from copy import deepcopy
from itertools import product
import json
from os import getcwd, makedirs, mkdir, write
from shutil import rmtree
from pathlib import Path
from typing import Any, Literal

def make_empty_folder(path: Path):
    if not path.exists():
        return mkdir(path)

    for content in path.iterdir():
        if content.is_file():
            content.unlink()
        elif content.is_dir():
            rmtree(content)
        
def blockbench_merge(model1: dict[str, Any], model2: dict[str, Any]):
    output = {}
    # output.pop("texture_size", None)
    out_textures: dict[str, str] = {}
    for k, v in model1["textures"].items():
        if k.isnumeric():
            v = "tf2:disguise/hand/" + "/".join(v.split("/")[2:])
        out_textures[k] = v

    highest_number = max(sorted([int(k) for k in out_textures.keys() if k.isnumeric()]))

    textures2: dict[str, str] = model2["textures"]
    # print(model2.keys())
    if "elements" not in model2: return
    elements2: list[dict] = model2["elements"]
    
    out_elements = model1["elements"]

    for k in textures2.keys():
        if k.isnumeric():
            new_k = str(int(k) + highest_number + 1)
            
            for element in elements2:
                for (direction, face) in element["faces"].items():
                    if face["texture"][1:] == k:
                        face["texture"] = f"#{new_k}"
                    element["faces"][direction] = face

                out_elements.append(element)

            out_textures[new_k] = "tf2:disguise/world/" + "/".join(textures2[k].split("/")[2:]) 

    return {
        "credit": "Made with Blockbench",
        "textures": out_textures,
        "elements": out_elements,
        "display": model1['display'] | {
            "thirdperson_righthand": model2['display'].get("thirdperson_righthand", None)
        }
    }

def format_json(obj) -> str:
    indentation = '\t'

    def new_line(tabs):
        return f'\n{indentation * tabs}'

    def escape(string):
        return string.replace('\\', '\\\\').replace('"', '\\"').replace('\n', '\\n').replace('\r\n', '\\n').replace('\t', '\\t')

    def handle_var(o, tabs):
        if isinstance(o, str):
            return f'"{escape(o)}"'
        if isinstance(o, bool):
            return 'true' if o else 'false'
        if o in [None, float('inf'), float('-inf')]:
            return 'null'
        if isinstance(o, (int, float)):
            return f'{round(o, 5)}'
        if isinstance(o, list):
            return handle_list(o, tabs)
        if isinstance(o, dict):
            return handle_dict(o, tabs)
        return ''

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

    def handle_dict(o, tabs):
        items = [f'"{escape(key)}": {handle_var(value, tabs + 1)}' for key, value in o.items()]
        out = (',' + new_line(tabs)).join(items)
        return f'{{{new_line(tabs) if items else ""}{out}{new_line(tabs - 1) if items else ""}}}'

    return handle_var(obj, 1)

cwd = getcwd()
items_path = Path(cwd, "item").relative_to(cwd)
make_empty_folder(Path(cwd, 'disguise'))

for model_path in items_path.rglob('*.json'):
    name = model_path.stem
    if name in {'logo', 'icon', 'empty', 'minigun_between_shots'} \
    or name.startswith("iron_chestplate"):
        continue

    slot = model_path.parent.stem
    if slot not in {'primary', 'secondary', 'melee'}:
        continue

    matching_slot = list((model_path.parents[2] / 'spy' / slot).iterdir())
    for spy_weapon in matching_slot:
        if spy_weapon == model_path or model_path.stem == "butterfly_knife_raised":
            continue

        makedirs(Path(cwd) / 'disguise' / slot, exist_ok=True)
        with (
            open(spy_weapon) as f, 
            open(model_path) as m,
            open(Path(cwd) / 'disguise' / slot / f'{spy_weapon.stem}_as_{name}.json', "w") as out
        ):
            spy_json: dict = json.load(f)
            disguise_json: dict = json.load(m)

            new_model = blockbench_merge(spy_json, disguise_json)
        
            out.write(format_json(new_model))






# for pic in items_path.rglob('*.png'):
#     

#     with open(pic) as img:
#         top_dir = Path(*pic.parts[0:2])
#         make_altered_image(img, 'world', 254)

#         if top_dir.stem == "spy": 
#             make_altered_image(img, 'hand', 253)
