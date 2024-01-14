scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=#tf2:player_like] if score @s tf2.batch_number = $local tf2.batch_number unless entity @s[gamemode=spectator] run tag @s add tf2.search
scoreboard players operation $temp tf2.team = @s tf2.team
execute as @e[type=#tf2:player_like,tag=tf2.search] unless score @s tf2.team = $temp tf2.team run tag @s add tf2.opponent
execute if score @s tf2.age matches ..4 run tag @e[type=#tf2:player_like,tag=tf2.search,tag=!tf2.opponent] remove tf2.search
scoreboard players set $collided tf2.var 0
execute if data entity @s {inGround: 1b} run scoreboard players add $collided tf2.var 1
data modify storage tf2.__temp__:vars motion set from entity @s Motion
execute at @s summon marker run function tf2:__private__/anonymous/15
execute as @e[type=#tf2:player_like,tag=tf2.in_voxel] at @s run function tf2:__private__/anonymous/17
tag @e[type=#tf2:player_like,tag=tf2.hit,sort=nearest,limit=1] add tf2.closest_hit
execute if entity @e[type=#tf2:player_like,tag=tf2.closest_hit] run scoreboard players add $collided tf2.var 2
execute unless score $collided tf2.var matches 1.. run return 0
execute on passengers run function tf2:__private__/anonymous/18
tag @s add tf2.cleanup
execute if entity @s[tag=!tf2.explosive] run return run execute as @e[type=#tf2:player_like,tag=tf2.closest_hit] run function tf2:projectile/simple_damage
execute on passengers store result storage tf2.__temp__:vars radius double 0.01905 run data get entity @s item.tag.projectile.explosion.radius
function tf2:projectile/explode with storage tf2.__temp__:vars