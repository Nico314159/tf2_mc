effect give @s glowing 10 0 true
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number
tag @s remove tf2.in_queue
tag @s add tf2.is_playing
attribute @s minecraft:player.block_interaction_range base set -1
execute unless score @s tf2.max_health = @s tf2.max_health run scoreboard players set @s tf2.max_health 100
scoreboard players operation @s tf2.health = @s tf2.max_health
tag @s add tf2.current
scoreboard players set @s tf2.respawn_timer 0
execute if score @s tf2.queue_type matches 1 run function tf2:start_game/as_players/competitive
execute if score @s tf2.queue_type matches 2 run function tf2:start_game/as_players/casual
execute if score @s tf2.queue_type matches 3 run function tf2:start_game/as_players/chaos