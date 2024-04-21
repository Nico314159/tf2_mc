data modify storage tf2:lookup entity set from entity @s {}
execute if entity @s[tag=!tf2.anim_over] run function tf2:door/animate
execute if entity @s[tag=tf2.anim_over,tag=!tf2.is_open] run function tf2:door/place_blocks with entity @s item.components.minecraft:custom_data.fill
execute if score @s tf2.door.state matches 0 run return run execute if entity @s[tag=!tf2.is_open] run function tf2:door/open
execute if score @s tf2.door.state matches 1 run return run execute if entity @s[tag=tf2.is_open] run function tf2:door/close
execute store result score $players_nearby tf2.var run function tf2:door/check_for_players with storage tf2:lookup entity.item.components.minecraft:custom_data
scoreboard players add @s[tag=tf2.is_open] tf2.door.time_open 1
execute if score $players_nearby tf2.var matches 1.. if entity @s[tag=!tf2.is_open] run function tf2:door/open
execute unless score $players_nearby tf2.var matches 1.. if score @s[scores={tf2.door.wait=0..}] tf2.door.time_open >= @s tf2.door.wait run function tf2:door/close