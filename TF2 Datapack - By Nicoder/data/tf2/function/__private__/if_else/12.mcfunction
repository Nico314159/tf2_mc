execute store result entity @s Rotation[1] float 0.01 run scoreboard players get $output_pitch tf2.var
scoreboard players set $correct_pitch tf2.var 1
scoreboard players set __if_else__ tf2.var 1