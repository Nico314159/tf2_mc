execute if score $show_debug_messages tf2.settings matches 1 run tellraw NicoWill314 ["",{"text":"<Debug> ","bold":true},"Game has been started by ",{"selector":"@s"}," at ",{"score":{"name":"$global","objective":"tf2.ticks"}}," ticks gametime"]
execute store result score @s tf2.batch_number run data get entity @s UUID[0]
scoreboard players operation $temp tf2.batch_number = @s tf2.batch_number 
scoreboard players reset $break tf2.queue_type
# TODO: replace random assignment with first come, first serve
execute if score $comp_queue_length tf2.var matches 12.. as @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=1,tf2.batch_number=0},limit=12,sort=random] run function tf2:start_game/as_players/generic
execute if score $casual_queue_length tf2.var matches 24.. unless score $break tf2.queue_type matches 1 as @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=2,tf2.batch_number=0},limit=24,sort=random] run function tf2:start_game/as_players/generic
execute if score $chaos_queue_length tf2.var matches 40.. unless score $break tf2.queue_type matches 1 as @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=3,tf2.batch_number=0},limit=40,sort=random] run function tf2:start_game/as_players/generic
scoreboard players reset $blu_count tf2.var
scoreboard players reset $red_count tf2.var
tag @s add tf2.in_use