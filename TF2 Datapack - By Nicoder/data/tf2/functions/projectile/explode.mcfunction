particle minecraft:explosion ~ ~ ~
scoreboard players set $playersHurt tf2.var 0
execute on origin run tag @s add tf2.origin
execute on origin run tag @s add tf2.opponent
tag @s add tf2.projectile
$execute at @s as @e[type=#tf2:player_like,tag=tf2.opponent,distance=..$(radius)] run function tf2:projectile/wall_check
tag @s remove tf2.projectile
execute on origin run tag @s remove tf2.origin