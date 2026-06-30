execute if score $batch_markers tf2.var < $Settings.max_batches tf2.var run summon minecraft:marker 0 0 0 {Tags:["tf2.batch"],data:{lastPos:[0.0d,0.0d,0.0d],map:{}}}
execute if score $batch_markers tf2.var > $Settings.max_batches tf2.var run kill @e[type=marker,tag=tf2.batch,sort=random,limit=1]
execute store result score $batch_markers tf2.var if entity @e[type=marker,tag=tf2.batch]
scoreboard players reset $index tf2.batch_number
execute as @e[type=marker,tag=tf2.batch] unless score @s tf2.batch_number = @s tf2.batch_number run function tf2:__private__/anonymous/16
execute unless score $batch_markers tf2.var = $Settings.max_batches tf2.var run function tf2:setup_markers