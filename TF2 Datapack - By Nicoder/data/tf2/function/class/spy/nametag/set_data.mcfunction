data modify entity @s CustomName set from block 0 0 0 item.components.minecraft:custom_name
data merge entity @s {CustomNameVisible:true,Age:-2147483647,NoGravity:true,NoAI:true}
attribute @s minecraft:scale base set 1.75
execute if score $disguise_team tf2.var matches 1 run team join RED @s
execute if score $disguise_team tf2.var matches 2 run team join BLU @s
scoreboard players operation @s tf2.uuid.0 = $uuid.0 tf2.var
scoreboard players operation @s tf2.uuid.1 = $uuid.1 tf2.var
scoreboard players operation @s tf2.uuid.2 = $uuid.2 tf2.var
scoreboard players operation @s tf2.uuid.3 = $uuid.3 tf2.var
tag @s add retina.ignore