#> tf2:setup_markers
#
# Summons new gamestate markers if there aren't enough, and kills extras if there are too many.
#
# @context any
# @public

execute if score $batch_markers tf2.var < $max_batches tf2.settings run summon minecraft:marker 0 0 0 {Tags:["tf2.batch"],data:{lastPos: [0.0d, 0.0d, 0.0d],  map: {}}}
execute if score $batch_markers tf2.var > $max_batches tf2.settings run kill @e[type=marker,tag=tf2.batch,sort=random,limit=1]
execute store result score $batch_markers tf2.var if entity @e[type=marker,tag=tf2.batch]
scoreboard players reset $index tf2.batch_number
execute as @e[type=marker,tag=tf2.batch] unless score @s tf2.batch_number = @s tf2.batch_number run function tf2:assign_id
execute unless score $batch_markers tf2.var = $max_batches tf2.settings run function tf2:setup_markers