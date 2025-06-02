scoreboard players set $mot.shortest_distance tf2.var 2147483647
scoreboard players operation $mot.shortest_distance tf2.var < $mot.distance_head_x tf2.var
scoreboard players operation $mot.shortest_distance tf2.var < $mot.distance_tail_x tf2.var
scoreboard players operation $mot.shortest_distance tf2.var < $mot.collision_distance_x tf2.var
scoreboard players operation $mot.shortest_distance tf2.var < $mot.distance_head_y tf2.var
scoreboard players operation $mot.shortest_distance tf2.var < $mot.distance_tail_y tf2.var
scoreboard players operation $mot.shortest_distance tf2.var < $mot.collision_distance_y tf2.var
scoreboard players operation $mot.shortest_distance tf2.var < $mot.distance_head_z tf2.var
scoreboard players operation $mot.shortest_distance tf2.var < $mot.distance_tail_z tf2.var
scoreboard players operation $mot.shortest_distance tf2.var < $mot.collision_distance_z tf2.var
execute if score $mot.shortest_distance tf2.var > $mot.distance tf2.var run return run function tf2:motion/stop_motion
execute if score $mot.shortest_distance tf2.var = $mot.collision_distance_x tf2.var run return run function tf2:motion/collision_x
execute if score $mot.shortest_distance tf2.var = $mot.distance_head_x tf2.var run return run function tf2:motion/head_x
execute if score $mot.shortest_distance tf2.var = $mot.distance_tail_x tf2.var run return run function tf2:motion/tail_x
execute if score $mot.shortest_distance tf2.var = $mot.collision_distance_y tf2.var run return run function tf2:motion/collision_y
execute if score $mot.shortest_distance tf2.var = $mot.distance_head_y tf2.var run return run function tf2:motion/head_y
execute if score $mot.shortest_distance tf2.var = $mot.distance_tail_y tf2.var run return run function tf2:motion/tail_y
execute if score $mot.shortest_distance tf2.var = $mot.collision_distance_z tf2.var run return run function tf2:motion/collision_z
execute if score $mot.shortest_distance tf2.var = $mot.distance_head_z tf2.var run return run function tf2:motion/head_z
execute if score $mot.shortest_distance tf2.var = $mot.distance_tail_z tf2.var run return run function tf2:motion/tail_z