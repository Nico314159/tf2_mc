function tf2:math/sway_heave_surge/find
function tf2:math/sway_heave_surge/apply
scoreboard players operation $output_vec3.X __retina.__variable__ = $output_vector_x tf2.var
scoreboard players operation $output_vec3.Y __retina.__variable__ = $output_vector_y tf2.var
scoreboard players operation $output_vec3.Z __retina.__variable__ = $output_vector_z tf2.var
function retina:traverse/setup
scoreboard players add $j tf2.var 10
execute if score $j tf2.var < $vertical_count tf2.var run function tf2:__private__/for_loop/1