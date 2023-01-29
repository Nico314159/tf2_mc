say generic
scoreboard players operation @s tf2.batch_number = $temp tf2.batch_number 
tag @s remove tf2.in_queue
tag @s add tf2.is_playing
scoreboard players set $break tf2.queue_type 1

# team assignment
execute store result score $red_count tf2.var if entity @e[type=#tf2:player_like,scores={tf2.team=1}]
execute store result score $blu_count tf2.var if entity @e[type=#tf2:player_like,scores={tf2.team=2}]
scoreboard players set @s tf2.team 1
execute if score $blu_count tf2.var < $red_count tf2.var run scoreboard players set @s tf2.team 2
execute if score $blu_count tf2.var = $red_count tf2.var if predicate tf2:coin_flip run scoreboard players set @s tf2.team 2

# gametype specific
execute if score @s tf2.queue_type matches 1 run function tf2:start_game/as_players/competitive
execute if score @s tf2.queue_type matches 2 run function tf2:start_game/as_players/casual
execute if score @s tf2.queue_type matches 3 run function tf2:start_game/as_players/chaos