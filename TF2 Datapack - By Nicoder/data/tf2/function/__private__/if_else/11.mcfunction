scoreboard players operation $d_yaw tf2.var > -1500 tf2.const
scoreboard players operation $d_yaw tf2.var < 1500 tf2.const
execute store result score $new_yaw tf2.var run data get entity @s Rotation[0] 100
scoreboard players operation $new_yaw tf2.var += $d_yaw tf2.var
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get $new_yaw tf2.var