clear @s minecraft:blaze_powder 20

execute at @s if score $allow_modded_commands tf2.main matches 1 run function tf:extinguish/default
execute at @s if score $allow_modded_commands tf2.main matches 0 run function tf:extinguish/vanilla_friendly

execute at @s if score $allow_modded_commands tf2.main matches 1 run function tf:knockback/default/from_airblast
execute at @s if score $allow_modded_commands tf2.main matches 0 run function tf:knockback/vanilla_friendly/from_airblast

execute as @s at @s anchored eyes positioned ^ ^0.5 ^ anchored feet run function vdv_raycast:start_ray


# change ownership
execute positioned ^ ^ ^2 as @e[tag=deflectable_projectile,distance=0..2.5] run tag @s add airblasted_projectile
execute as @e[tag=airblasted_projectile] run data modify entity @s crit set value 1b

execute if entity @s[team=BLU] as @e[tag=airblasted_projectile,tag=red_grenade] run tag @s add blu_grenade
execute if entity @s[team=BLU] as @e[tag=airblasted_projectile,tag=red_grenade] run tag @s remove red_grenade

execute if entity @s[team=RED] as @e[tag=airblasted_projectile,tag=blu_grenade] run tag @s add red_grenade
execute if entity @s[team=RED] as @e[tag=airblasted_projectile,tag=blu_grenade] run tag @s remove blu_grenade

scoreboard players operation $player team = @s team
execute as @e[tag=airblasted_projectile] unless score @s team = $player team run scoreboard players operation @s team = $player team
scoreboard players reset $player team 

execute if entity @s[team=BLU] as @e[tag=airblasted_projectile,scores={team=1}] run scoreboard players set @s team 2


data modify storage tf:projectile_uuid_storage projectile_owner set from entity @s UUID
execute as @e[tag=airblasted_projectile,distance=..4] run data modify entity @s Owner set from storage tf:projectile_uuid_storage projectile_owner

# summon the temporary entity
summon area_effect_cloud ^ ^ ^1 {Tags:["redirection"]}

# get the coordinates of the player and the entity
execute store result score #playerX pos run data get entity @s Pos[0] 1000
execute store result score #playerY pos run data get entity @s Pos[1] 1000
execute store result score #playerZ pos run data get entity @s Pos[2] 1000
execute store result score #targetX pos as @e[type=area_effect_cloud,tag=redirection,limit=1] run data get entity @s Pos[0] 1000
execute store result score #targetY pos as @e[type=area_effect_cloud,tag=redirection,limit=1] run data get entity @s Pos[1] 1000
execute store result score #targetZ pos as @e[type=area_effect_cloud,tag=redirection,limit=1] run data get entity @s Pos[2] 1000

# do the math
scoreboard players operation #targetX pos -= #playerX pos
scoreboard players operation #targetY pos -= #playerY pos
scoreboard players operation #targetZ pos -= #playerZ pos

execute as @e[tag=airblasted_projectile,distance=..3] store result entity @s Motion[0] double 0.001 run scoreboard players get #targetX pos
execute as @e[tag=airblasted_projectile,distance=..3] store result entity @s Motion[1] double 0.001 run scoreboard players get #targetY pos
execute as @e[tag=airblasted_projectile,distance=..3] store result entity @s Motion[2] double 0.001 run scoreboard players get #targetZ pos

kill @e[tag=redirection]
tag @e[tag=airblasted_projectile] remove airblasted_projectile
