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
tp @s[scores={tf2.queue_type=1}] 10 25 25 0 0
tp @s[scores={tf2.queue_type=2}] -10 25 25 0 0
tp @s[scores={tf2.queue_type=3}] -30 25 25 0 0
scoreboard players add @s tf2.batch_number 0