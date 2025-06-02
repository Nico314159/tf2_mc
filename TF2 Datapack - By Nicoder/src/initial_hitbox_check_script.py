from typing import TYPE_CHECKING
if TYPE_CHECKING:
    def emit(command: str): ...
    
AXES = ["x", "y", "z"]
functions = []

for axis in range(3):
    commands = []

    for offset in range(3):
        commands.append(
            "if ( " +
            f"$mot.hitbox_{AXES[axis]} >= " +
            f"{offset} " +
            f') execute positioned {"~ "*axis}~{offset}{" ~"*(2-axis)} ' +
            f'run this.{"initial_hitbox_check_" + AXES[axis + 1] if axis < 2 else "get_distance_to_geometry"}(); ' +
            f'$mot.voxel_{AXES[axis]} {"+= 1000" if offset < 2 else "= $mot.base_" + AXES[axis]};'
        )

    functions.append(f'function initial_hitbox_check_{AXES[axis]}() {{ {" ".join(commands)} }}')

emit(" ".join(functions))