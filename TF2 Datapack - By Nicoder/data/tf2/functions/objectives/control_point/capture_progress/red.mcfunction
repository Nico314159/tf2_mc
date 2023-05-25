scoreboard players operation @s[scores={tf2.blu_progress=1..}] tf2.blu_progress -= $sum tf2.var
scoreboard players operation @s tf2.blu_progress > 0 tf2.const
scoreboard players operation @s[scores={tf2.blu_progress=0}] tf2.red_progress += $sum tf2.var
execute if score @s tf2.red_progress >= @s tf2.capture_threshold run function tf2:objectives/control_point/set_owner/red
execute store result score $temp tf2.var if predicate tf2:coin_flip
execute if entity @s[tag=!tf2.said_dialogue,tag=!tf2.last,scores={tf2.team=2}] if score $temp tf2.var matches 0 run tellraw @a[scores={tf2.team=2}] {"text":"Alert! Our control point is being captured.","bold":true,"color":"white"}
execute if entity @s[tag=!tf2.said_dialogue,tag=!tf2.last,scores={tf2.team=2}] if score $temp tf2.var matches 1 run tellraw @a[scores={tf2.team=2}] {"text":"Defend our control point!","bold":true,"color":"white"}
execute if entity @s[tag=!tf2.said_dialogue,tag=tf2.last,scores={tf2.team=2}] if score $temp tf2.var matches 0 run tellraw @a[scores={tf2.team=2}] [{"text":"Alert! Our","bold":true,"color":"white"},{"text":" last ","bold":true,"italic":true,"color":"white"},{"text":"control point is being captured!","bold":true,"color":"white"}]
execute if entity @s[tag=!tf2.said_dialogue,tag=tf2.last,scores={tf2.team=2}] if score $temp tf2.var matches 1 run tellraw @a[scores={tf2.team=2}] [{"text":"Alert! The","bold":true,"color":"white"},{"text":" final ","italic":true,"bold":true,"color":"white"},{"text":"control point is under attack.","bold":true,"color":"white"}]
tag @s[scores={tf2.team=2}] add tf2.said_dialogue