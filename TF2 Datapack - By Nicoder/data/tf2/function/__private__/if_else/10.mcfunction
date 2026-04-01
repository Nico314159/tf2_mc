execute store result entity @s Rotation[0] float 0.01 run scoreboard players get $output_yaw tf2.var
scoreboard players set $correct_yaw tf2.var 1
scoreboard players set __if_else__ tf2.var 1