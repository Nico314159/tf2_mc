scoreboard players operation $mot.collision_distance_x tf2.var = $mot.distance_x tf2.var
scoreboard players operation $mot.collision_edge_x tf2.var = $mot.on_edge tf2.var
scoreboard players operation $mot.collision_entity_x tf2.var = $mot.is_entity tf2.var
scoreboard players set __if_else__ tf2.var 0
execute if score $mot.sign_x tf2.var matches 1 run function tf2:__private__/if_else/49
execute if score __if_else__ tf2.var matches 0 run scoreboard players operation $mot.collision_surface_x tf2.var = $mot.geo_max_x tf2.var