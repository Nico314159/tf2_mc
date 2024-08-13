from copy import deepcopy
from itertools import product
import json
from os import getcwd, makedirs, mkdir, write
from shutil import rmtree
from pathlib import Path
from typing import Any, Final
from handler import RP_ROOT, blockbench_style_JSON

def make_empty_folder(path: Path):
    if not path.exists():
        return mkdir(path)

    for content in path.iterdir():
        if content.is_file():
            content.unlink()
        elif content.is_dir():
            rmtree(content)
        
def blockbench_merge(model1: dict[str, Any], model2: dict[str, Any], compensate_rotation=False):
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

    pov3rd = {
        k: v for (k, v) in model2['display'].items() if k == "thirdperson_righthand"
    }

    if compensate_rotation:
        try: pov3rd["thirdperson_righthand"]["rotation"][0] += 0
        except KeyError: pass
    
    return {
        "credit": "Made with Blockbench",
        "textures": out_textures,
        "elements": out_elements,
        "display": model1['display'] | pov3rd
    }

models_path: Final[Path] = RP_ROOT / 'assets' / 'tf2' / 'models'
items_path: Final[Path] = models_path / 'item'
make_empty_folder(models_path / 'disguise')

for model_path in items_path.rglob('*.json'):
    name = model_path.stem

    if name in {'logo', 'icon', 'empty'} \
    or name.startswith("iron_chestplate"):
        continue

    slot = model_path.parent.stem
    if slot not in {'primary', 'secondary', 'melee'}:
        continue

    # TODO: remove this
    if model_path.parents[1].stem == 'medic':
        continue

    matching_slot = list((model_path.parents[2] / 'spy' / slot).iterdir())
    if slot == 'primary':
        matching_slot += list((model_path.parents[2] / 'spy' / 'disguise_kit').iterdir())

    for spy_weapon in matching_slot:
        if spy_weapon == model_path or model_path.stem == "butterfly_knife_raised":
            continue

        makedirs(models_path / 'disguise' / slot, exist_ok=True)
        with (
            open(spy_weapon) as f, 
            open(model_path) as m,
            open(models_path / 'disguise' / slot / f'{spy_weapon.stem}_as_{name}.json', "w") as out
        ):
            spy_json: dict = json.load(f)
            disguise_json: dict = json.load(m)

            new_model = blockbench_merge(spy_json, disguise_json, compensate_rotation=(spy_weapon.parent.stem=="disguise_kit"))
        
            out.write(blockbench_style_JSON(new_model))






# for pic in items_path.rglob('*.png'):
#     

#     with open(pic) as img:
#         top_dir = Path(*pic.parts[0:2])
#         make_altered_image(img, 'world', 254)

#         if top_dir.stem == "spy": 
#             make_altered_image(img, 'hand', 253)
