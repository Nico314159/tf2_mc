execute as @e if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute as @e[type=marker,tag=tf2.control_point,tag=tf2.current] at @s run function tf2:objectives/control_point/lock
kill @e[type=villager,tag=tf2.current]
execute if score $winner tf2.var matches 1 run tellraw @a[tag=tf2.current] ["",{"text":"MATCH ","color":"yellow"},{"text":"| ","color":"white"},{"text":"RED wins!","color":"red","bold":true,"italic":true}]
execute if score $winner tf2.var matches 2 run tellraw @a[tag=tf2.current] ["",{"text":"MATCH ","color":"yellow"},{"text":"| ","color":"white"},{"text":"BLU wins!","color":"blue","bold":true,"italic":true}]
execute if score $winner tf2.var matches -1 run tellraw @a[tag=tf2.current] {"text":"Stalemate....","italic":true,"color":"gray","hoverEvent":{"action":"show_text","contents":["You're",{"text":" all ","bold":true},"losers!"]}}
execute as @a[tag=tf2.current] run function tf2:__private__/anonymous/3
function tf2:timer/hide
scoreboard players set @s tf2.timer -1
tag @a remove tf2.current