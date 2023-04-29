#> tf2:reset/as_marker
#
# Resets gameplay-specific information once a match ends.
#
# @within
#   tf2:timer/main
# @context a marker (position/rotation irrelevant)
# @handles game reset

# execute if score $show_debug_messages tf2.settings matches 1 run tellraw NicoWill314 ["",{"text":"<Debug> ","bold":true},{"score":{"name":"$red_cp_count","objective":"tf2.var"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"$blu_cp_count","objective":"tf2.var"},"color":"blue"},{"text":", ","color":"blue"},{"score":{"name":"$cp_count","objective":"tf2.var"}}]
execute if score $show_debug_messages tf2.settings matches 1 run tellraw NicoWill314 ["",{"text":"<Debug> ","bold":true},"Game controlled by ",{"selector":"@s"}," has ended at ",{"score":{"name":"$global","objective":"tf2.ticks"}}," ticks gametime"]

scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute as @a[tag=tf2.current] run function tf2:reset/as_players
kill @s
function tf2:setup_markers