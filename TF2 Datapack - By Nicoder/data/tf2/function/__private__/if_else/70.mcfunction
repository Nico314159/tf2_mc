scoreboard players set $mot.on_edge tf2.var 1
scoreboard players remove $mot.temp_max_x tf2.var 3
scoreboard players add $mot.temp_min_x tf2.var 3
scoreboard players remove $mot.temp_max_y tf2.var 3
scoreboard players add $mot.temp_min_y tf2.var 3
execute if score $mot.temp_max_x tf2.var > $mot.geo_min_x tf2.var if score $mot.temp_min_x tf2.var < $mot.geo_max_x tf2.var if score $mot.temp_max_y tf2.var > $mot.geo_min_y tf2.var if score $mot.temp_min_y tf2.var < $mot.geo_max_y tf2.var run scoreboard players set $mot.on_edge tf2.var 0
execute if score $mot.on_edge tf2.var matches 1 run scoreboard players add $mot.distance_z tf2.var 50
execute if score $mot.distance_z tf2.var < $mot.collision_distance_z tf2.var run function tf2:__private__/if_else/69