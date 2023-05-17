execute positioned ~-0.95 ~-0.95 ~-0.95 as @e[dx=0,tag=!__self__] positioned ~0.9 ~0.9 ~0.9 if entity @s[dx=0] positioned ~0.05 ~0.05 ~0.05 run function tf2:__private__/raycast_simple/collide/0
execute if score __current_iter_raycast__0 tf2.var matches 1.. run scoreboard players remove __current_iter_raycast__0 tf2.var 1
execute unless block ~ ~ ~ #tf2:__private__/raycast_simple/default_raycast_pass run scoreboard players set __current_iter_raycast__0 tf2.var 0
execute if score __current_iter_raycast__0 tf2.var matches 0 run function tf2:__private__/raycast_simple/collide/0
particle crit ~ ~ ~ 0 0 0 0 1
execute if score __current_iter_raycast__0 tf2.var matches 1.. positioned ^ ^ ^0.1 run function tf2:__private__/raycast_simple/loop/0