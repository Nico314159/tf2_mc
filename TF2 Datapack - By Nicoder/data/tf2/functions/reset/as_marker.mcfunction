#> tf2:reset/as_marker
#
# Resets gameplay-specific information once a match ends.
#
# @within
#   tf2:timer/main
# @context a marker (position/rotation irrelevant)
# @handles game reset
# @reads
#   score $show_debug_messages tf2.settings
#       Self-explanatory.
#   score @s tf2.batch_number
#   score ⟨players⟩ tf2.batch_number
#       Finds the players that belong to this game marker.
execute if score $show_debug_messages tf2.settings matches 1 run tellraw NicoWill314 ["",{"text":"<Debug> ","bold":true},"Game controlled by ",{"selector":"@s"}," has ended at ",{"score":{"name":"$global","objective":"tf2.ticks"}}," ticks gametime"]
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute as @a[tag=tf2.current] run function tf2:reset/as_players
kill @s
function tf2:setup_markers