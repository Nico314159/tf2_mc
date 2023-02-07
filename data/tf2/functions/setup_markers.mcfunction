#> tf2:setup_markers
#
# Summons new gamestate markers if there aren't enough, and kills extras if there are too many.
#
# @context any
# @within tf2:load

execute if score $batch_markers tf2.var < $max_batches tf2.settings run summon minecraft:marker 0 0 0 {Tags:["tf2.batch"],data:{lastPos: [0.0f, 0.0f, 0.0f], queue_type: "", players:{RED:[], BLU:[]}, player_max: 0,  map: {}, game_state: {}}}
execute if score $batch_markers tf2.var > $max_batches tf2.settings run kill @e[type=marker,tag=tf2.batch,sort=random,limit=1]
execute store result score $batch_markers tf2.var if entity @e[type=marker,tag=tf2.batch]
execute unless score $batch_markers tf2.var = $max_batches tf2.settings run function tf2:setup_markers