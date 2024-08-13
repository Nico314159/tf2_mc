from itertools import product
from os import makedirs, mkdir
from shutil import rmtree
from PIL.Image import Image, open
from pathlib import Path
from typing import Final, cast
from handler import RP_ROOT

def make_empty_folder(path: Path):
    if not path.exists():
        return mkdir(path)

    for content in path.iterdir():
        if content.is_file():
            content.unlink()
        elif content.is_dir():
            rmtree(content)
        

def make_altered_image(original: Image, name: str, alpha: int):
    out_path = textures_path / 'disguise' / name / pic.relative_to(top_dir)
    makedirs(out_path.parent, exist_ok=True)

    out_img = original.copy()

    width, height = original.size
    for xy in product(range(width), range(height)):
        *rgb, a = cast(tuple, original.getpixel(xy))

        if a == 255:
            out_img.putpixel(xy, (*rgb, alpha))
    
    out_img.save(out_path)
            

textures_path: Final[Path] = RP_ROOT / 'assets' / 'tf2' / 'textures'
items_path: Final[Path] = textures_path / 'item'
make_empty_folder(textures_path / 'disguise')

for pic in items_path.rglob('*.png'):
    if pic.stem in {'logo', 'icon', 'transparent', 'white'}:
        continue

    top_dir = pic.parents[1]

    # TODO: remove this
    if top_dir.stem == 'medic':
        continue

    with open(pic) as img:
        make_altered_image(img, 'world', 254)

        if top_dir.stem == "spy": 
            make_altered_image(img, 'hand', 253)
