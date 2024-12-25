function tf2:math/facing_vector
scoreboard players operation $output_vector_x tf2.var *= $launch_speed tf2.var
scoreboard players operation $output_vector_x tf2.var /= 1000 tf2.const
execute store result storage tf2:gren grenade.mot_x int 1 run scoreboard players get $output_vector_x tf2.var
scoreboard players operation $output_vector_y tf2.var *= $launch_speed tf2.var
scoreboard players operation $output_vector_y tf2.var /= 1000 tf2.const
execute store result storage tf2:gren grenade.mot_y int 1 run scoreboard players get $output_vector_y tf2.var
scoreboard players operation $output_vector_z tf2.var *= $launch_speed tf2.var
scoreboard players operation $output_vector_z tf2.var /= 1000 tf2.const
execute store result storage tf2:gren grenade.mot_z int 1 run scoreboard players get $output_vector_z tf2.var
execute anchored eyes positioned ^ ^ ^ run function tf2:grenade/spawn with storage tf2:gren grenade