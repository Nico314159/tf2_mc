scoreboard players operation $current tf2.team = @s tf2.team
execute as @e[type=#tf2:player_like] unless score @s tf2.team = $current tf2.team run tag @s add tf2.enemy
tag @s add __self__
scoreboard players set __current_iter_raycast__0 tf2.var 1000
execute anchored eyes positioned ^ ^ ^0.1 run function tf2:__private__/raycast_simple/loop/0
tag @s remove __self__
tag @e remove tf2.enemy