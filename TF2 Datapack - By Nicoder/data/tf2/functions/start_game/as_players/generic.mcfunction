effect give @s glowing 1000 0 true
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number
tag @s remove tf2.in_queue
tag @s add tf2.is_playing
execute unless score @s tf2.max_health = @s tf2.max_health run scoreboard players set @s tf2.max_health 100
scoreboard players operation @s tf2.health = @s tf2.max_health
tag @s add tf2.current
scoreboard players set @s tf2.respawn_timer 0
give @s carrot_on_a_stick{CustomModelData:2,__item_id__:1,display:{Name:'"Sniper"'}} 1
give @s carrot_on_a_stick{CustomModelData:3,__item_id__:2,display:{Name:'"Scout"'}} 1
execute if score @s tf2.queue_type matches 1 run function tf2:start_game/as_players/competitive
execute if score @s tf2.queue_type matches 2 run function tf2:start_game/as_players/casual
execute if score @s tf2.queue_type matches 3 run function tf2:start_game/as_players/chaos