scoreboard players add @s tf2.time_scoped 1
scoreboard players set @s tf2.grace_period 0
tag @s add tf2.scoped
execute at @s run function tf2:raycast/informational
execute summon marker run function tf2:__private__/anonymous/3
tag @s add tf2.self
execute at @e[type=marker,tag=tf2.temp] run function tf2:__private__/anonymous/4
tag @s remove tf2.self
kill @e[type=marker,tag=tf2.temp]
advancement revoke @s only tf2:class/sniper/scope