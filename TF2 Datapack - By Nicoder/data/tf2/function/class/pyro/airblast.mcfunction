execute store result score $airblast_cost tf2.var run data get entity @s SelectedItem.components.minecraft:custom_data.attributes.airblast.cost
execute if score @s tf2.primary_clip < $airblast_cost tf2.var run return fail
execute if score @s tf2.airblast_delay matches 1.. run return fail
scoreboard players operation @s tf2.primary_clip -= $airblast_cost tf2.var
execute store result score $airblast_delay tf2.var run data get entity @s SelectedItem.components.minecraft:custom_data.attributes.airblast.delay 20
scoreboard players operation @s tf2.airblast_delay += $airblast_delay tf2.var
scoreboard players set $successful_extinguish tf2.var 0
scoreboard players operation $current tf2.team = @s tf2.team
scoreboard players operation $current tf2.batch_number = @s tf2.batch_number
execute as @e if score @s tf2.batch_number = $current tf2.batch_number run tag @s add tf2.current
tag @s add origin
execute anchored eyes as @e[tag=tf2.current] facing entity @s eyes at @p[tag=origin] anchored feet positioned ^ ^ ^1 rotated as @p[tag=origin] positioned ^ ^ ^-1 if entity @p[distance=..0.6,tag=origin] run tag @s add tf2.within_cone
tag @e[distance=..4.877] add tf2.within_sphere
execute anchored eyes positioned ^ ^ ^ as @e[tag=tf2.within_cone,tag=tf2.within_sphere] run function tf2:class/pyro/airblast_target
execute anchored eyes positioned ^ ^ ^-0.5 run function tf2:__private__/particle_line/0
execute if score $successful_extinguish tf2.var matches 1.. run scoreboard players add @s tf2.health 20
execute if score $successful_extinguish tf2.var matches 1.. run function tf2:player/clamp_health
tag @s remove origin
tag @e remove tf2.within_cone
tag @e remove tf2.within_sphere