execute if score @s class_change matches 1..9 run scoreboard players operation @s class = @s class_change 
kill @s
scoreboard players set @s class_change -9
scoreboard players enable @s class_change