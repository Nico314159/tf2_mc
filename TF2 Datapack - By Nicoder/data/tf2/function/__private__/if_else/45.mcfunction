scoreboard players set $mot.shortest_distance tf2.var 2147483647
scoreboard players operation $mot.shortest_distance tf2.var < $mot.distance_head_x tf2.var
scoreboard players operation $mot.shortest_distance tf2.var < $mot.distance_head_y tf2.var
scoreboard players operation $mot.shortest_distance tf2.var < $mot.distance_head_z tf2.var
scoreboard players operation $mot.shortest_distance tf2.var < $mot.distance_tail_x tf2.var
scoreboard players operation $mot.shortest_distance tf2.var < $mot.distance_tail_y tf2.var
scoreboard players operation $mot.shortest_distance tf2.var < $mot.distance_tail_z tf2.var
execute if score $mot.shortest_distance tf2.var = $mot.distance_head_x tf2.var run function tf2:motion/head_x
execute if score $mot.shortest_distance tf2.var = $mot.distance_head_y tf2.var run function tf2:motion/head_y
execute if score $mot.shortest_distance tf2.var = $mot.distance_head_z tf2.var run function tf2:motion/head_z
execute if score $mot.shortest_distance tf2.var = $mot.distance_tail_x tf2.var run function tf2:motion/tail_x
execute if score $mot.shortest_distance tf2.var = $mot.distance_tail_y tf2.var run function tf2:motion/tail_y
execute if score $mot.shortest_distance tf2.var = $mot.distance_tail_z tf2.var run function tf2:motion/tail_z
execute if score $mot.end tf2.var matches 0 run function tf2:motion/traverse