scoreboard players operation $d_yaw tf2.var > $minus_turn_speed tf2.var
scoreboard players operation $d_yaw tf2.var < $turn_speed tf2.var
execute store result score $new_yaw tf2.var run data get entity @s Rotation[0] 100
scoreboard players operation $new_yaw tf2.var += $d_yaw tf2.var
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get $new_yaw tf2.var