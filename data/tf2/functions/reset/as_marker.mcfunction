#> tf2:reset/as_marker
#
# Resets gameplay-specific information once a match ends.
#
# @within tf2:objectives/control_point/gamestate
# @context a marker (position/rotation irrelevant)
# @handles game reset

tag @s remove tf2.in_use
data remove entity @s data.map
scoreboard players reset @s tf2.gamemode
scoreboard players reset @s tf2.timer
execute as @e[type=marker,tag=tf2.objective,tag=tf2.current] run kill @s
execute as @e[type=#tf2:player_like] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute as @e[type=#tf2:player_like,tag=tf2.current] run function tf2:reset/as_players
