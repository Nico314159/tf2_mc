#> tf2:spawn/init
#
# (Re)spawns a player and changes their gamemode back to adventure if applicable.
#
# @within
#   tf2:tick
#   tf2:team_assign
# @context a player
# @handles player spawning (both game start & respawn)
# @reads
#   score @s tf2.batch_number
#   score ⟨marker⟩ tf2.batch_number
#       Finds the game marker that matches the executing player.

tag @s add tf2.temp
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.batch] if score @s tf2.batch_number = $local tf2.batch_number run function tf2:spawn/tp
tag @s remove tf2.temp
gamemode adventure @s
tag @s remove tf2.dead