data modify storage tf2:vars save_rotation set from entity @s transformation.right_rotation
scoreboard players operation @s tf2.mot_z *= -1 tf2.const
scoreboard players operation @s tf2.mot_x >< @s tf2.mot_z
function tf2:projectile/linear_velocity_to_quaternion
execute store result score $input_quaternion_1_r tf2.var run data get storage tf2:vars save_rotation[3] 1000
scoreboard players operation $input_quaternion_2_r tf2.var = @s tf2.quaternion_r
execute store result score $input_quaternion_1_i tf2.var run data get storage tf2:vars save_rotation[0] 1000
scoreboard players operation $input_quaternion_2_i tf2.var = @s tf2.quaternion_i
execute store result score $input_quaternion_1_j tf2.var run data get storage tf2:vars save_rotation[1] 1000
scoreboard players operation $input_quaternion_2_j tf2.var = @s tf2.quaternion_j
execute store result score $input_quaternion_1_k tf2.var run data get storage tf2:vars save_rotation[2] 1000
scoreboard players operation $input_quaternion_2_k tf2.var = @s tf2.quaternion_k
function tf2:math/quaternion_dot_product
scoreboard players operation $dot_product tf2.var *= $dot_product tf2.var
execute if score $dot_product tf2.var matches ..499999 run function tf2:__private__/if_else/21
scoreboard players operation @s tf2.mot_x >< @s tf2.mot_z
scoreboard players operation @s tf2.mot_z *= -1 tf2.const
tag @s add tf2.has_hit_ground