tag @s add tf2.check
execute summon marker at @s facing entity @e[type=#tf2:player_like,tag=tf2.check,limit=1] run function tf2:__private__/anonymous/17
tag @s remove tf2.check