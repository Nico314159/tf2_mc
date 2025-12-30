from head_handler import classes, RP_ROOT
import json

def main():

    def bitmap(c, a=0, h=100):
        i = classes.index(c)+1
        return fr"""
        {{   "type": "bitmap",
            "file": "tf2:font/viewmodel/red/{c}.png",
            "ascent": {a},
            "height": {h},
            "chars": ["\ue21{i}"]
        }}, {{"type": "bitmap",
            "file": "tf2:font/viewmodel/blu/{c}.png",
            "ascent": {a},
            "height": {h},
            "chars": ["\ue22{i}"]
        }}"""



    text = f"""
{{
    "providers": [
        {{   "type": "space",
            "advances": {{"_": 5, "\u200c": 0}}
        }},
        {',\n\n'.join(bitmap(c) for c in classes)}
    ]
}}"""


    (RP_ROOT / 'assets' / 'tf2' / 'font' / 'viewmodel.json').write_text(text.strip('\n'))

if __name__ == "__main__":
    main()