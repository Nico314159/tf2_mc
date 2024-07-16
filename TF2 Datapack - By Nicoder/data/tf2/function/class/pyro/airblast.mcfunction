scoreboard players set $airblast_cost tf2.var 20
execute if score @s tf2.primary_clip < $airblast_cost tf2.var run return fail
scoreboard players operation @s tf2.primary_clip -= $airblast_cost tf2.var
scoreboard players set $successful_extinguish tf2.var 0
scoreboard players operation $current tf2.team = @s tf2.team
scoreboard players operation $current tf2.batch_number = @s tf2.batch_number
execute as @e if score @s tf2.batch_number = $current tf2.batch_number run tag @s add tf2.current
tag @s add origin
execute anchored eyes as @e[tag=tf2.current] facing entity @s eyes at @p[tag=origin] anchored feet positioned ^ ^ ^1 rotated as @p[tag=origin] positioned ^ ^ ^-1 if entity @p[distance=..0.6,tag=origin] run tag @s add tf2.within_cone
tag @e[distance=..4.877] add tf2.within_sphere
execute as @e[type=#tf2:player_like,tag=tf2.within_cone,tag=tf2.within_sphere,tag=tf2.on_fire] if score @s tf2.team = $current tf2.team run function tf2:class/pyro/airblast_extinguish
execute as @e[type=#tf2:player_like,tag=tf2.within_cone,tag=tf2.within_sphere] unless score @s tf2.team = $current tf2.team run function tf2:class/pyro/airblast_knockback
execute as @e[type=arrow,tag=tf2.projectile,tag=tf2.within_cone,tag=tf2.within_sphere,tag=!tf2.unreflectable] on passengers unless score @s tf2.team = $current tf2.team run function tf2:class/pyro/reflect_projectile
execute if score $successful_extinguish tf2.var matches 1.. run scoreboard players add @s tf2.health 20
execute if score $successful_extinguish tf2.var matches 1.. run scoreboard players operation @s tf2.health < @s tf2.max_health
tag @s remove origin
tag @e remove tf2.teammate
tag @e remove tf2.within_cone
tag @e remove tf2.within_sphere