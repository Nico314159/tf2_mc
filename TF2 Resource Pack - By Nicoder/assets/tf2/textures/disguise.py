from itertools import product
from os import getcwd, makedirs, mkdir
from shutil import rmtree
from PIL.Image import Image, open
from pathlib import Path
from typing import cast

def make_empty_folder(path: Path):
    if not path.exists():
        return mkdir(path)

    for content in path.iterdir():
        if content.is_file():
            content.unlink()
        elif content.is_dir():
            rmtree(content)
        

def make_altered_image(original: Image, name: str, alpha: int):
    out_path = 'disguise' / (name / pic.relative_to(top_dir))
    makedirs(out_path.parent, exist_ok=True)

    out_img = original.copy()

    width, height = original.size
    for xy in product(range(width), range(height)):
        *rgb, a = cast(tuple, original.getpixel(xy))

        if a == 255:
            out_img.putpixel(xy, (*rgb, alpha))
    
    out_img.save(out_path)
            

cwd = getcwd()
items_path = Path(cwd, "item").relative_to(cwd)
make_empty_folder(Path(cwd, 'disguise'))

for pic in items_path.rglob('*.png'):
    if pic.stem in {'logo', 'icon', 'transparent', 'white'}:
        continue

    with open(pic) as img:
        top_dir = Path(*pic.parts[0:2])
        make_altered_image(img, 'world', 254)

        if top_dir.stem == "spy": 
            make_altered_image(img, 'hand', 253)
