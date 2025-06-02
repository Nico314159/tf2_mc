from typing import TYPE_CHECKING
if TYPE_CHECKING:
    def emit(command: str): ...
    
AXES = ["x", "y", "z"]
functions = []

for first_axis in range(3):
    for axis_offset in range(3):
        second_axis = (first_axis + axis_offset)%3
        commands = []

        for offset in range(3):
            commands.append(
                "if ( " +
                f"$mot.hitbox_{AXES[second_axis]} " +
                f'{["=", ">=", ">="][axis_offset]} ' +
                f"{offset} " +
                f') execute positioned {"~ "*second_axis}~{offset}{" ~"*(2-second_axis)} ' +
                f'run this.{"hitbox_" + AXES[first_axis] + "_" + AXES[(second_axis + 1)%3] if axis_offset < 2 else "get_distance_to_geometry"}(); ' +
                f'$mot.voxel_{AXES[second_axis]} {"+= 1000" if offset < 2 else "= $mot.base_" + AXES[second_axis]};'
            )

        functions.append(f'function hitbox_{AXES[first_axis]}_{AXES[second_axis]}() {{ {" ".join(commands)} }}')

emit(" ".join(functions))