#> tf2:start_game/as_players/generic
#
# Assigns players on teams and teleports them to the spawn
#
# @within tf2:start_game/as_marker
# @context all players in the current queue
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

effect give @s glowing 1000 0 true
execute if score $show_debug_messages tf2.settings matches 1 run say generic
scoreboard players operation @s tf2.batch_number = $temp tf2.batch_number 
tag @s remove tf2.in_queue
tag @s add tf2.is_playing
scoreboard players set $break tf2.queue_type 1

# used for team assignment
tag @s add tf2.current_batch

# gametype specific
execute if score @s tf2.queue_type matches 1 run function tf2:start_game/as_players/competitive
execute if score @s tf2.queue_type matches 2 run function tf2:start_game/as_players/casual
execute if score @s tf2.queue_type matches 3 run function tf2:start_game/as_players/chaos