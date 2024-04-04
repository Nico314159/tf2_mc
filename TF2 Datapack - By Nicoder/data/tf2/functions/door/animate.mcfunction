scoreboard players operation @s tf2.vel_Y += @s tf2.accel
execute store result score $temp_Y tf2.var run data get entity @s transformation.translation[1] 10000
scoreboard players operation $temp_Y tf2.var += @s tf2.vel_Y
execute if score @s tf2.anim_ticks matches ..18 run scoreboard players operation $temp_Y tf2.var += @s tf2.vel_Y
execute store result entity @s transformation.translation[1] float 0.0001 run scoreboard players get $temp_Y tf2.var
scoreboard players add @s tf2.anim_ticks 1