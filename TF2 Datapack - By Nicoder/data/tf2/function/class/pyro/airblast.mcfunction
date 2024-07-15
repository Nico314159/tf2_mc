scoreboard players set $airblast_cost tf2.var 20
execute if score @s tf2.primary_clip < $airblast_cost tf2.var run return fail
scoreboard players operation @s tf2.primary_clip -= $airblast_cost tf2.var
say airblast
scoreboard players set $successful_extinguish tf2.var 0
scoreboard players operation $current tf2.team = @s tf2.team
scoreboard players operation $current tf2.batch_number = @s tf2.batch_number
execute as @e[type=#tf2:player_like] if score @s tf2.team = $current tf2.team if score @s tf2.batch_number = $current tf2.batch_number run tag @s add tf2.teammate
tag @s add origin
execute as @e[type=#tf2:player_like,tag=tf2.teammate] facing entity @s feet positioned ^ ^ ^1 rotated as @p[tag=origin] positioned ^ ^ ^-1 if entity @p[distance=..0.6,tag=origin] run tag @s add tf2.within_cone
execute as @e[distance=..4.877] run tag @s add tf2.within_sphere
execute as @e[type=#tf2:player_like,tag=tf2.within_cone,tag=tf2.within_sphere,tag=tf2.on_fire] run function tf2:class/pyro/airblast_extinguish
execute if score $successful_extinguish tf2.var matches 1.. run scoreboard players add @s tf2.health 20
execute if score $successful_extinguish tf2.var matches 1.. run scoreboard players operation @s tf2.health < @s tf2.max_health
tag @s remove origin
tag @e remove tf2.teammate
tag @e remove tf2.within_cone
tag @e remove tf2.within_sphere