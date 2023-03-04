#> tf2:select
#
# Adds players to queues when they select them using /trigger.
#
# @within tf2:tick
# @context all players not already queued or playing
# @input
#	score @s tf2.queue_type
#		Which queue the player is in (1 = competitive, 2 = casual, 3 = chaos)

execute if score @s tf2.queue_type matches 1 run function tf2:select/comp_mode
execute if score @s tf2.queue_type matches 2 run function tf2:select/casual_mode
execute if score @s tf2.queue_type matches 3 run function tf2:select/chaos_mode
execute unless score @s tf2.batch_number = @s tf2.batch_number run scoreboard players set @s tf2.batch_number 0
