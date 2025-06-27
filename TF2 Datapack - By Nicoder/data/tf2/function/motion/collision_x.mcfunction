execute if score $mot.collision_edge_x tf2.var matches 1 run scoreboard players remove $mot.shortest_distance tf2.var 50
scoreboard players operation $mot.step_x tf2.var = $mot.motion_x tf2.var
scoreboard players operation $mot.step_x tf2.var *= $mot.shortest_distance tf2.var
scoreboard players operation $mot.step_x tf2.var /= $mot.distance tf2.var
scoreboard players operation @s tf2.x += $mot.step_x tf2.var
scoreboard players operation $mot.motion_x tf2.var -= $mot.step_x tf2.var
scoreboard players operation $mot.distance_head_x tf2.var -= $mot.shortest_distance tf2.var
scoreboard players operation $mot.distance_tail_x tf2.var -= $mot.shortest_distance tf2.var
scoreboard players operation $mot.step_y tf2.var = $mot.motion_y tf2.var
scoreboard players operation $mot.step_y tf2.var *= $mot.shortest_distance tf2.var
scoreboard players operation $mot.step_y tf2.var /= $mot.distance tf2.var
scoreboard players operation @s tf2.y += $mot.step_y tf2.var
scoreboard players operation $mot.motion_y tf2.var -= $mot.step_y tf2.var
scoreboard players operation $mot.distance_head_y tf2.var -= $mot.shortest_distance tf2.var
scoreboard players operation $mot.distance_tail_y tf2.var -= $mot.shortest_distance tf2.var
scoreboard players operation $mot.step_z tf2.var = $mot.motion_z tf2.var
scoreboard players operation $mot.step_z tf2.var *= $mot.shortest_distance tf2.var
scoreboard players operation $mot.step_z tf2.var /= $mot.distance tf2.var
scoreboard players operation @s tf2.z += $mot.step_z tf2.var
scoreboard players operation $mot.motion_z tf2.var -= $mot.step_z tf2.var
scoreboard players operation $mot.distance_head_z tf2.var -= $mot.shortest_distance tf2.var
scoreboard players operation $mot.distance_tail_z tf2.var -= $mot.shortest_distance tf2.var
scoreboard players operation @s tf2.x = $mot.collision_surface_x tf2.var
scoreboard players set __if_else__ tf2.var 0
execute if score $mot.sign_x tf2.var matches 1 run function tf2:__private__/if_else/47
execute if score __if_else__ tf2.var matches 0 run scoreboard players operation @s tf2.x += @s tf2.hitbox_x
scoreboard players operation @s tf2.x -= $mot.sign_x tf2.var
scoreboard players operation $mot.min_x tf2.var = @s tf2.x
scoreboard players operation $mot.min_x tf2.var -= @s tf2.hitbox_x
scoreboard players operation $mot.max_x tf2.var = @s tf2.x
scoreboard players operation $mot.max_x tf2.var += @s tf2.hitbox_x
scoreboard players operation $mot.min_y tf2.var = @s tf2.y
scoreboard players operation $mot.min_y tf2.var -= @s tf2.hitbox_y
scoreboard players operation $mot.max_y tf2.var = @s tf2.y
scoreboard players operation $mot.max_y tf2.var += @s tf2.hitbox_y
scoreboard players operation $mot.min_z tf2.var = @s tf2.z
scoreboard players operation $mot.min_z tf2.var -= @s tf2.hitbox_z
scoreboard players operation $mot.max_z tf2.var = @s tf2.z
scoreboard players operation $mot.max_z tf2.var += @s tf2.hitbox_z
scoreboard players operation $mot.distance tf2.var -= $mot.shortest_distance tf2.var
scoreboard players operation @s tf2.collision_x = $mot.sign_x tf2.var
scoreboard players operation @s tf2.collision_entity_x = $mot.collision_entity_x tf2.var
scoreboard players set $mot.distance_head_x tf2.var 2147483647
scoreboard players set $mot.distance_tail_x tf2.var 2147483647
scoreboard players set $mot.motion_x tf2.var 0
scoreboard players set __if_else__ tf2.var 0
scoreboard players set __logic__0 tf2.var 0
execute if score @s tf2.halt matches 1 run scoreboard players set __logic__0 tf2.var 1
execute unless score __logic__0 tf2.var matches 1 if score $mot.distance tf2.var matches 0 run scoreboard players set __logic__0 tf2.var 1
execute if score __logic__0 tf2.var matches 1 run function tf2:__private__/if_else/48
execute if score __if_else__ tf2.var matches 0 run function tf2:motion/initial_hitbox_check