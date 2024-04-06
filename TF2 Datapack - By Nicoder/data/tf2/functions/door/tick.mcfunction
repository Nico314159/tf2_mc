particle flame ~ ~ ~
data modify storage tf2:lookup entity set from entity @s {}
execute if entity @s[tag=!tf2.anim_over] run function tf2:door/animate
execute store result score $players_nearby tf2.var run function tf2:door/check_for_players with storage tf2:lookup entity.item.components.minecraft:custom_data
scoreboard players add @s[tag=tf2.is_open] tf2.time_open 1
execute if score $players_nearby tf2.var matches 1.. if entity @s[tag=!tf2.is_open] run function tf2:door/open
execute unless score $players_nearby tf2.var matches 1.. if score @s[scores={tf2.wait=0..}] tf2.time_open >= @s tf2.wait run function tf2:door/close
execute if entity @s[tag=tf2.anim_over,tag=!tf2.is_open] run function tf2:door/place_blocks with entity @s item.components.minecraft:custom_data.fill