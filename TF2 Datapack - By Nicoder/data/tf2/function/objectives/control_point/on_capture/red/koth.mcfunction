scoreboard players set @e[type=marker,tag=tf2.current,tag=tf2.batch] tf2.team 1
execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute store result score $temp tf2.var if predicate tf2:coin_flip
execute if score $temp tf2.var matches 1.. run tellraw @a[tag=tf2.current,scores={tf2.team=1}] {"text":"We have captured the control point!","bold":true,"color":"red","type":"text"}
execute unless score $temp tf2.var matches 1.. run tellraw @a[tag=tf2.current,scores={tf2.team=1}] {"text":"We have secured the control point!","bold":true,"color":"red","type":"text"}
tellraw @a[tag=tf2.current,scores={tf2.team=2}] {"text":"We have lost the control point!","bold":true,"color":"blue","type":"text"}
tag @a remove tf2.current