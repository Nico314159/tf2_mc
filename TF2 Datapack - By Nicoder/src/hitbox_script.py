from typing import TYPE_CHECKING
if TYPE_CHECKING:
    def emit(command: str): ...
    
AXES = ["x", "y", "z"]
functions = []

for first_axis in range(3):
    for axis_offset in range(3):
        second_axis = (first_axis + axis_offset)%3
        commands = []

        for group in range(2):
            for offset in range(3):
                commands.append(
                    "if ( " +
                    f"$mot.temp_hitbox_{AXES[second_axis]} " +
                    f'{["=", ">=", ">="][axis_offset]} ' +
                    f"{offset*2 + group} " +
                    f') execute positioned {"~ "*second_axis}~{offset}{["", ".5"][group]}{" ~"*(2-second_axis)} ' +
                    f'run this.{"hitbox_" + AXES[first_axis] + "_" + AXES[(second_axis + 1)%3] if axis_offset < 2 else "block"}();'
                )
            commands.append(f"$mot.subblock_{AXES[second_axis]} += 1;")

        functions.append(f'function hitbox_{AXES[first_axis]}_{AXES[second_axis]}() {{ {" ".join(commands)} }}')

emit(" ".join(functions))