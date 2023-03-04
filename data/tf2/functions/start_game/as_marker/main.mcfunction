#> tf2:start_game/as_marker/main
#
# Starts a new running game with the players in the queue. 
#
# @within tf2:tick
# @context a marker (position/rotation irrelevant)
# @handles start of game
# @input
#   score $(casual|competitive|chaos)_queue_length tf2.var 
#       The number of people queued for each game format
# @output
#   score @s tf2.batch_number
#   score ⟨players⟩ tf2.batch_number
#       Pairs the players in a queue to each other and to the storage marker
# @writes
#   score $break tf2.queue_type
#       Prevents multiple queues from getting assigned to same game

execute if score $show_debug_messages tf2.settings matches 1 run tellraw NicoWill314 ["",{"text":"<Debug> ","bold":true},"Game has been started by ",{"selector":"@s"}," at ",{"score":{"name":"$global","objective":"tf2.ticks"}}," ticks gametime"]
execute store result score @s tf2.batch_number run data get entity @s UUID[0]
execute store result score $temp tf2.batch_number run data get entity @s UUID[0]
scoreboard players reset $break tf2.queue_type
# TODO: make dynamic for selected maps instead of hardcoding
data modify entity @s data.map set from storage tf2:maps 0

data modify storage tf2:temp summon set from entity @s data.objectives
scoreboard players set $index tf2.var 0
execute store result score $length tf2.var if data storage tf2:temp summon[]
function tf2:start_game/as_marker/loop

# TODO: replace random assignment with first come, first serve
execute if score $comp_queue_length tf2.var matches 12.. as @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=1,tf2.batch_number=0},limit=12,sort=random] run function tf2:start_game/as_players/generic
execute if score $casual_queue_length tf2.var matches 24.. unless score $break tf2.queue_type matches 1 as @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=2,tf2.batch_number=0},limit=24,sort=random] run function tf2:start_game/as_players/generic
execute if score $chaos_queue_length tf2.var matches 40.. unless score $break tf2.queue_type matches 1 as @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=3,tf2.batch_number=0},limit=40,sort=random] run function tf2:start_game/as_players/generic

scoreboard players reset @e[tag=tf2.current_batch] tf2.team
scoreboard players set $team_temp tf2.var 0
execute store result score $count tf2.var if entity @e[tag=tf2.current_batch]
execute as @e[tag=tf2.current_batch,sort=random] run function tf2:team_assign
scoreboard players operation $count tf2.var %= $2 tf2.const
execute if score $count tf2.var matches 1 as @e[tag=tf2.current_batch,sort=random,limit=1,scores={tf2.team=1}] if predicate tf2:coin_flip run scoreboard players set @s tf2.team 2
tag @s add tf2.in_use
tag @e remove tf2.current_batch