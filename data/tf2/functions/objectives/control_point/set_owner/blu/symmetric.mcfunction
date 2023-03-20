#> tf2:objectives/control_point/set_owner/blu/symmetric
# 
# @within tf2:objectives/control_point/set_owner/blu
# @context marker & position

scoreboard players operation $temp tf2.index = @s tf2.index
scoreboard players add $temp tf2.index 1

execute as @e[type=marker,tag=tf2.current,scores={tf2.team=1}] if score @s tf2.index = $temp tf2.index run scoreboard players set @s tf2.locked 0
execute as @e[type=marker,tag=tf2.current,scores={tf2.team=1}] if score @s tf2.index = $temp tf2.index at @s run setblock ~ ~ ~ air

scoreboard players remove $temp tf2.index 2
execute unless entity @s[scores={tf2.team=0}] as @e[type=marker,tag=tf2.current,scores={tf2.team=2}] if score @s tf2.index = $temp tf2.index run scoreboard players set @s tf2.locked 1
execute unless entity @s[scores={tf2.team=0}] as @e[type=marker,tag=tf2.current,scores={tf2.team=2}] if score @s tf2.index = $temp tf2.index at @s run setblock ~ ~ ~ stone_slab
# TODO: add support for map events (like doors opening)