execute if score @s tf2.door.pos matches 1.. if score @s tf2.door.pos < @s tf2.door.length run return 1
execute store result score @s tf2.door.vel run scoreboard players set @s tf2.door.accel 0
scoreboard players operation @s tf2.door.pos > 0 tf2.const
scoreboard players operation @s tf2.door.pos < @s tf2.door.length
tag @s add tf2.anim_over