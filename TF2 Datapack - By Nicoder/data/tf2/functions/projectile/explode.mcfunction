particle minecraft:explosion ~ ~ ~
execute on origin run tag @s add tf2.origin
$execute as @e[type=#tf2:player_like,tag=tf2.opponent,distance=..$(radius)] run function tf2:__private__/anonymous/18
tag @a remove tf2.current