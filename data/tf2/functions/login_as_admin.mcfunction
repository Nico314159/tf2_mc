#> tf2:login_as_admin
#
# Resets the player's gameplay tags and allows them to queue for a game, but doesn't clear their inventory or teleport them to the lobby room.
# 
# @within tf2:tick
# @context a player with tf2.admin tag

execute if score $show_debug_messages tf2.settings matches 1 run tellraw @a ["",{"text":"<Debug> ","bold":true},"Admin ",{"selector":"@s"}," has logged in at ",{"score":{"name":"$global","objective":"tf2.ticks"}}," ticks gametime."]
gamemode creative @s

scoreboard players operation @s tf2.ticks = $global tf2.ticks
scoreboard players enable @s tf2.queue_type
scoreboard players set @s tf2.queue_type 0

# remove gameplay-specific tags
tag @s remove tf2.in_queue
tag @s remove tf2.allowed_to_sprint
tag @s remove tf2.is_playing
tag @s remove tf2.random_spread
tag @s remove tf2.random_crits
tag @s remove tf2.free_vote
tag @s remove tf2.can_be_autobalanced