particle minecraft:explosion ~ ~ ~
execute store result score $playersHurt tf2.var run scoreboard players set $_totalDamage_ tf2.var 0
execute on vehicle on origin run tag @s add tf2.origin
execute on vehicle on origin run tag @s add tf2.opponent
data modify storage tf2:vars weapon_name set from entity @s item.components.minecraft:custom_name
$execute at @s as @e[type=#tf2:player_like,tag=tf2.opponent,distance=..$(radius)] run function tf2:projectile/wall_check
execute on vehicle on origin run tag @s remove tf2.origin