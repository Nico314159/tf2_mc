tag @s add __self__
scoreboard players set __current_iter_raycast__0 tf2.var 1000
execute anchored eyes positioned ^ ^ ^0.1 run function tf2:__private__/raycast_simple/loop/0
tag @s remove __self__