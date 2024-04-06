execute if score @s tf2.door.pos > $min_goal tf2.var if score @s tf2.door.pos < $max_goal tf2.var run return 1
execute store result score @s tf2.door.vel run scoreboard players set @s tf2.door.accel 0
scoreboard players operation @s tf2.door.pos > $min_goal tf2.var
scoreboard players operation @s tf2.door.pos < $max_goal tf2.var
tag @s add tf2.anim_over