particle flame ~ ~ ~
execute if score @s tf2.anim_ticks matches ..19 run function tf2:door/animate
execute store result score $players_nearby tf2.var run function tf2:door/check_for_players with entity @s item.components.minecraft:custom_data
scoreboard players add @s[tag=tf2.is_open] tf2.time_open 1
execute if score $players_nearby tf2.var matches 1.. if entity @s[tag=!tf2.is_open] run function tf2:door/open
execute unless score $players_nearby tf2.var matches 1.. if score @s[scores={tf2.wait=0..}] tf2.time_open >= @s tf2.wait run function tf2:door/close