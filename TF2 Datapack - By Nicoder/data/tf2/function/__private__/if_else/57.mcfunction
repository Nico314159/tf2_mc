scoreboard players operation $mot.collision_distance_x tf2.var = $mot.distance_x tf2.var
scoreboard players operation $mot.collision_edge_x tf2.var = $mot.on_edge tf2.var
scoreboard players operation $mot.collision_entity_x tf2.var = $mot.is_entity tf2.var
execute if score $mot.is_entity tf2.var matches 1.. store result score $id tf2.var run data get storage iris:data Shape[-1].entity_id
execute if score $mot.is_entity tf2.var matches 1.. as @e if score @s iris.id = $id tf2.var run tag @s add tf2.hit_by_projectile
scoreboard players set __if_else__ tf2.var 0
execute if score $mot.sign_x tf2.var matches 1 run function tf2:__private__/if_else/56
execute if score __if_else__ tf2.var matches 0 run scoreboard players operation $mot.collision_surface_x tf2.var = $mot.geo_max_x tf2.var