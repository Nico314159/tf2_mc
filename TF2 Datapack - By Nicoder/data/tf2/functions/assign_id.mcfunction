#> tf2:assign_id
#
# @within
#   tf2:setup_markers
#   tf2:assign_id
scoreboard players set @s tf2.map 1
scoreboard players add $index tf2.batch_number 1
scoreboard players set $break tf2.batch_number 1
execute as @e[type=marker,tag=tf2.batch] if score @s tf2.batch_number = $index tf2.batch_number run scoreboard players set $break tf2.batch_number 0
execute unless score $break tf2.batch_number matches 1 run function tf2:assign_id
scoreboard players operation @s tf2.batch_number = $index tf2.batch_number