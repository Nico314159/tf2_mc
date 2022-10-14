execute if score $show_debug_messages tf2.settings matches 1 run tellraw NicoWill314 ["",{"text":"<Debug> ","bold":true},"Game has been started by ",{"selector":"@s"}," at ",{"score":{"name":"$global","objective":"tf2.ticks"}}," ticks gametime"]
execute store result score @s tf2.batch_number run data get entity @s UUID[0]
scoreboard players operation $temp tf2.batch_number = @s tf2.batch_number 
scoreboard players reset $current_queue_type tf2.var 
execute if score $comp_queue_length tf2.var matches 12.. run scoreboard players set $temp tf2.queue_type 1
execute if score $casual_queue_length tf2.var matches 24.. run scoreboard players set $temp tf2.queue_type 2
execute if score $chaos_queue_length tf2.var matches 40.. run scoreboard players set $temp tf2.queue_type 3
execute if score $temp tf2.queue_type matches 1 as @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=1,tf2.batch_number=0},limit=12,sort=random] run function tf2:start_game/as_players/competitive
execute if score $temp tf2.queue_type matches 2 as @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=2,tf2.batch_number=0},limit=24,sort=random] run function tf2:start_game/as_players/casual
execute if score $temp tf2.queue_type matches 3 as @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=3,tf2.batch_number=0},limit=40,sort=random] run function tf2:start_game/as_players/chaos

