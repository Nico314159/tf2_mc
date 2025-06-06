scoreboard players operation $mot.temp_distance_y tf2.var = $mot.motion_y tf2.var
scoreboard players operation $mot.temp_distance_y tf2.var *= $mot.distance_x tf2.var
scoreboard players operation $mot.temp_distance_y tf2.var /= 1000 tf2.const
scoreboard players operation $mot.temp_min_y tf2.var = $mot.min_y tf2.var
scoreboard players operation $mot.temp_min_y tf2.var += $mot.temp_distance_y tf2.var
scoreboard players operation $mot.temp_max_y tf2.var = $mot.max_y tf2.var
scoreboard players operation $mot.temp_max_y tf2.var += $mot.temp_distance_y tf2.var
scoreboard players operation $mot.temp_distance_z tf2.var = $mot.motion_z tf2.var
scoreboard players operation $mot.temp_distance_z tf2.var *= $mot.distance_x tf2.var
scoreboard players operation $mot.temp_distance_z tf2.var /= 1000 tf2.const
scoreboard players operation $mot.temp_min_z tf2.var = $mot.min_z tf2.var
scoreboard players operation $mot.temp_min_z tf2.var += $mot.temp_distance_z tf2.var
scoreboard players operation $mot.temp_max_z tf2.var = $mot.max_z tf2.var
scoreboard players operation $mot.temp_max_z tf2.var += $mot.temp_distance_z tf2.var
execute if score $mot.temp_max_y tf2.var >= $mot.geo_min_y tf2.var if score $mot.temp_min_y tf2.var <= $mot.geo_max_y tf2.var if score $mot.temp_max_z tf2.var >= $mot.geo_min_z tf2.var if score $mot.temp_min_z tf2.var <= $mot.geo_max_z tf2.var run function tf2:__private__/if_else/55