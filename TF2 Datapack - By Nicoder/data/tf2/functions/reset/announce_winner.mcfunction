#> tf2:reset/announce_winner
#
# Announces the winner of the game but doesn't relog players yet.
#
# @within
#   tf2:objectives/control_point/gamestate
#   tf2:timer/end_game
# @context a game marker (position/rotation irrelevant)
# @handles game reset
# @input
#   score $winner tf2.team
#       Which team has won the current game (1 = RED, 2 = BLU, -1 = stalemate).
# @reads
#   score @s tf2.batch_number
#   score ⟨control points⟩ tf2.batch_number
#       Finds the control points that belong to this game marker.
#   score ⟨players⟩ tf2.team
#       Used to determine if a player is on the winning or losing team.
#  execute if score $show_debug_messages tf2.settings matches 1 run tellraw Nico314 ["",{"text":"<Debug> ","bold":true},{"score":{"name":"$red_cp_count","objective":"tf2.var"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"$blu_cp_count","objective":"tf2.var"},"color":"blue"},{"text":", ","color":"blue"},{"score":{"name":"@s","objective":"tf2.index"}}]
execute as @e if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute as @e[type=marker,tag=tf2.control_point,tag=tf2.current] at @s run function tf2:reset/as_objectives
kill @e[type=villager,tag=tf2.current]
execute if score $winner tf2.team matches 1 run tellraw @a[tag=tf2.current] ["",{"text":"MATCH ","bold":false,"italic":false,"color":"yellow"},"| ",{"text":"RED wins!","bold":true,"italic":true,"color":"red"}]
execute if score $winner tf2.team matches 2 run tellraw @a[tag=tf2.current] ["",{"text":"MATCH ","bold":false,"italic":false,"color":"yellow"},"| ",{"text":"BLU wins!","bold":true,"italic":true,"color":"blue"}]
execute if score $winner tf2.team matches -1 run tellraw @a[tag=tf2.current] {"text":"Stalemate....","italic":true,"color":"gray","hoverEvent":{"action":"show_text","contents":["You're",{"text":" all ","bold":true},"losers!"]}}
execute as @a[tag=tf2.current] if score @s tf2.team = $winner tf2.team run tellraw @s [{"text":"Victory.","bold":false,"italic":true}]
execute as @a[tag=tf2.current] if score $winner tf2.team matches 1..2 unless score @s tf2.team = $winner tf2.team run tellraw @s [{"text":"You've failed!","bold":false,"italic":true}]
function tf2:timer/hide
scoreboard players set @s tf2.timer -1
tag @a remove tf2.current