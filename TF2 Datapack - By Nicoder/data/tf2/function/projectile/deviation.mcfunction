execute store result score $input_pitch retina.__variable__ run data get entity @s Rotation[1] 10
execute store result score $input_yaw retina.__variable__ run data get entity @s Rotation[0] 10
function retina:math/gimbal_to_matrix
execute store result score $horizontal_count retina.__variable__ run scoreboard players set $vertical_count retina.__variable__ 10
execute store result score $spread_least retina.__variable__ run data get storage tf2:summon projectile.deviation.min
execute store result score $spread_most retina.__variable__ run data get storage tf2:summon projectile.deviation.max
function retina:math/sway_heave_surge/find
function retina:math/sway_heave_surge/apply
scoreboard players operation $output_vector_x tf2.var = $output_vec3.X retina.__variable__
scoreboard players operation $output_vector_y tf2.var = $output_vec3.Y retina.__variable__
scoreboard players operation $output_vector_z tf2.var = $output_vec3.Z retina.__variable__