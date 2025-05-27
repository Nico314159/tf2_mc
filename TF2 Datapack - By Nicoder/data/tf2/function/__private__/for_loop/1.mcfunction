function tf2:math/sway_heave_surge/find
function tf2:math/sway_heave_surge/apply
execute store result storage tf2:raycast direction.X float 0.0020833 run scoreboard players get $output_vector_x tf2.var
execute store result storage tf2:raycast direction.Y float 0.0020833 run scoreboard players get $output_vector_y tf2.var
execute store result storage tf2:raycast direction.Z float 0.0020833 run scoreboard players get $output_vector_z tf2.var
execute at @s anchored eyes positioned ^ ^ ^ run function tf2:raycast/damaging
scoreboard players add $j tf2.var 10
execute if score $j tf2.var < $vertical_count tf2.var run function tf2:__private__/for_loop/1