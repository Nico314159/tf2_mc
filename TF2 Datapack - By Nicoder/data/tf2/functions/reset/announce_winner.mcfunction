#> tf2:reset/announce_winner
#
# Announces the winner of the game but doesn't do anything destructive yet.
#
# @within
#   tf2:objectives/control_point/gamestate
#   tf2:timer/end_game
# @context a marker (position/rotation irrelevant)
# @handles game reset

execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute if score $winner tf2.team matches 1 run tellraw @a[tag=tf2.current] ["",{"text":"MATCH ","bold":false,"italic":false,"color":"yellow"},"| ",{"text":"RED wins!","bold":true,"italic":true,"color":"red"}]
execute if score $winner tf2.team matches 2 run tellraw @a[tag=tf2.current] ["",{"text":"MATCH ","bold":false,"italic":false,"color":"yellow"},"| ",{"text":"BLU wins!","bold":true,"italic":true,"color":"blue"}]
execute if score $winner tf2.team matches -1 run tellraw @a[tag=tf2.current] {"text":"Stalemate....","italic":true,"color":"gray","hoverEvent":{"action":"show_text","contents":["You're",{"text":" all ","bold":true},"losers!"]}}
execute as @a[tag=tf2.current] if score @s tf2.team = $winner tf2.team run tellraw @s [{"text":"Victory.","bold":false,"italic":true}]
execute as @a[tag=tf2.current] if score $winner tf2.team matches 1..2 unless score @s tf2.team = $winner tf2.team run tellraw @s [{"text":"You've failed!","bold":false,"italic":true}]
function tf2:timer/hide
scoreboard players set @s tf2.timer -1
tag @a remove tf2.current