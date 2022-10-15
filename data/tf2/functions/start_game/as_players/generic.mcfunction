scoreboard players operation @s tf2.batch_number = $temp tf2.batch_number 
tag @s remove tf2.in_queue
tag @s add tf2.is_playing
scoreboard players set $break tf2.queue_type 1
execute if score @s tf2.queue_type matches 1 run function tf2:start_game/as_players/competitive
execute if score @s tf2.queue_type matches 2 run function tf2:start_game/as_players/casual
execute if score @s tf2.queue_type matches 3 run function tf2:start_game/as_players/chaos