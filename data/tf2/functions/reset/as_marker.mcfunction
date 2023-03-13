#> tf2:reset/as_marker
#
# Resets gameplay-specific information once a match ends.
#
# @within tf2:objectives/control_point/gamestate
# @context a marker (position/rotation irrelevant)
# @handles game reset

execute if score $show_debug_messages tf2.settings matches 1 run tellraw NicoWill314 ["",{"text":"<Debug> ","bold":true},{"score":{"name":"$red_cp_count","objective":"tf2.var"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"$blu_cp_count","objective":"tf2.var"},"color":"blue"},{"text":", ","color":"blue"},{"score":{"name":"$cp_count","objective":"tf2.var"}}]
execute if score $show_debug_messages tf2.settings matches 1 run tellraw NicoWill314 ["",{"text":"<Debug> ","bold":true},"Game controlled by ",{"selector":"@s"}," has ended at ",{"score":{"name":"$global","objective":"tf2.ticks"}}," ticks gametime"]
tag @s remove tf2.in_use
data remove entity @s data.map
scoreboard players reset @s tf2.gamemode
scoreboard players reset @s tf2.queue_type
scoreboard players reset @s tf2.timer
execute as @e[type=marker,tag=tf2.objective,tag=tf2.current] at @s run setblock ~ ~-1 ~ glass
kill @e[type=marker,tag=tf2.objective,tag=tf2.current]
execute as @e[type=#tf2:player_like] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute as @e[type=#tf2:player_like,tag=tf2.current] run function tf2:reset/as_players
