from typing import TYPE_CHECKING
if TYPE_CHECKING:
    def emit(command: str): ...
    
AXES = ["x", "y", "z"]
SIDES = ["head", "tail"]
functions = []

for axis in range(3):
    for side in range(2):
        commands = []

        commands.append(
            # Set step direction to use for later
            f'$mot.step = {axis + 2*side}; ' +

            # Apply delta to nearest axis
            f'$mot.distance_{SIDES[side]}_{AXES[axis]} += $mot.delta_{AXES[axis]}; ' +

            # Change size of hitbox
            f'$mot.hitbox_{AXES[axis]} {"+" if side == 0 else "-"}= 1; ' +

            # Shift base position
            (
                f'if ($mot.sign_{AXES[axis]} = -1) $mot.base_{AXES[axis]} -= 1000; '
                if side == 0 else 
                f'if ($mot.sign_{AXES[axis]} = 1) $mot.base_{AXES[axis]} += 1000; '
            ) +

            # Run check function
            (
                (
                    f'if ($mot.sign_{AXES[axis]} = -1) execute positioned {"~ "*axis}~-1{" ~"*(2-axis)} run this.update_collision_distance(); ' +
                    f'if ($mot.sign_{AXES[axis]} = 1) this.update_collision_distance();'
                ) if side == 0 else (
                    f'if ($mot.sign_{AXES[axis]} = 1) execute positioned {"~ "*axis}~1{" ~"*(2-axis)} run this.traverse(); ' +
                    f'if ($mot.sign_{AXES[axis]} = -1) this.traverse();'
                )
            )
        )

        functions.append(f'function {SIDES[side]}_{AXES[axis]}() {{ {" ".join(commands)} }}')

emit(" ".join(functions))