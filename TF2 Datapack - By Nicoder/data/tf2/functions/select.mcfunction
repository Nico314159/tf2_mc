#> tf2:select
#
# Adds players to queues when they select them using /trigger.
#
# @within tf2:__tick__
# @context all players not already queued or playing
# @input
#	score @s tf2.queue_type
#		Which queue the player is in (1 = competitive, 2 = casual, 3 = chaos)
clear @s written_book
tag @s add tf2.in_queue
execute if score @s tf2.queue_type matches 1 run tp @s 10 25 25 0 0
execute if score @s tf2.queue_type matches 2 run tp @s -10 25 25 0 0
execute if score @s tf2.queue_type matches 3 run tp @s -30 25 25 0 0
execute unless score @s tf2.batch_number = @s tf2.batch_number run scoreboard players set @s tf2.batch_number 0