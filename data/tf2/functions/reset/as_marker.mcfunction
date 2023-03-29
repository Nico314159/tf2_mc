#> tf2:reset/as_marker
#
# Resets gameplay-specific information once a match ends.
#
# @within
#   tf2:objectives/control_point/gamestate
#   tf2:timer/end_game
# @context a marker (position/rotation irrelevant)
# @handles game reset

execute if score $show_debug_messages tf2.settings matches 1 run tellraw NicoWill314 ["",{"text":"<Debug> ","bold":true},{"score":{"name":"$red_cp_count","objective":"tf2.var"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"$blu_cp_count","objective":"tf2.var"},"color":"blue"},{"text":", ","color":"blue"},{"score":{"name":"$cp_count","objective":"tf2.var"}}]
execute if score $show_debug_messages tf2.settings matches 1 run tellraw NicoWill314 ["",{"text":"<Debug> ","bold":true},"Game controlled by ",{"selector":"@s"}," has ended at ",{"score":{"name":"$global","objective":"tf2.ticks"}}," ticks gametime"]
execute as @e if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute if score $winner tf2.team matches 1 run tellraw @a[tag=tf2.current] ["",{"text":"MATCH ","bold":false,"italic":false,"color":"yellow"},"| ",{"text":"RED wins!","bold":true,"italic":true,"color":"red"}]
execute if score $winner tf2.team matches 2 run tellraw @a[tag=tf2.current] ["",{"text":"MATCH ","bold":false,"italic":false,"color":"yellow"},"| ",{"text":"BLU wins!","bold":true,"italic":true,"color":"blue"}]
execute if score $winner tf2.team matches -1 run tellraw @a[tag=tf2.current] {"text":"Stalemate....","italic":true,"color":"gray","hoverEvent":{"action":"show_text","contents":["You're",{"text":" all ","bold":true},"losers!"]}}

execute as @e[type=marker,tag=tf2.control_point,tag=tf2.current] at @s run function tf2:reset/as_objectives
execute as @e[type=#tf2:player_like,tag=tf2.current] run function tf2:reset/as_players
function tf2:timer/hide
kill @s
function tf2:setup_markers