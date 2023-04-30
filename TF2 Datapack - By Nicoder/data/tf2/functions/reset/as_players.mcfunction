#> tf2:reset/as_players
#
# Adds to players' permanent scores and relogs them.
#
# @within tf2:reset/as_marker
# @context all players in the current game
# @reads
#   score @s tf2.team
#   score $winner tf2.team
#       Determines whether the player was on the winning or losing team.
# @writes
#   score @s tf2.permanent.games_(played/won)
#       Permanent statistics pertaining to the player.
#   score @s tf2.ticks
#       Number of ticks the player has been online. Resetting this value relogs the player.

execute if score @s tf2.team = $winner tf2.team run scoreboard players add @s tf2.permanent.games_won 1
scoreboard players add @s tf2.permanent.games_played 1

tag @s remove tf2.current
scoreboard players reset @s tf2.ticks

# debug only
kill @s[type=villager]