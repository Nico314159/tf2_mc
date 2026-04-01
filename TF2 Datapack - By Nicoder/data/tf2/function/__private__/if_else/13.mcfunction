scoreboard players operation $d_pitch tf2.var > -1500 tf2.const
scoreboard players operation $d_pitch tf2.var < 1500 tf2.const
execute store result score $new_pitch tf2.var run data get entity @s Rotation[1] 100
scoreboard players operation $new_pitch tf2.var += $d_pitch tf2.var
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get $new_pitch tf2.var