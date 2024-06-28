tag @e remove tf2.current
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.control_point] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute store result score $red_cp_count tf2.var if entity @e[type=marker,tag=tf2.current,scores={tf2.team=1}]
execute store result score $blu_cp_count tf2.var if entity @e[type=marker,tag=tf2.current,scores={tf2.team=2}]
scoreboard players reset $winner tf2.var
execute if score $red_cp_count tf2.var = @s[tag=!tf2.multistage,scores={tf2.gamemode=2}] tf2.index run scoreboard players set $winner tf2.var 1
execute if score $blu_cp_count tf2.var = @s[tag=!tf2.multistage,scores={tf2.gamemode=1..2}] tf2.index run scoreboard players set $winner tf2.var 2
execute if score $winner tf2.var = $winner tf2.var if score @s tf2.timer matches 0.. run function tf2:reset/announce_winner
tag @e[type=marker,tag=tf2.control_point,tag=tf2.current] remove tf2.current