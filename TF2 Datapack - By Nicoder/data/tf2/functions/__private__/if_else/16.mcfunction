execute store result score $input_pitch retina.__variable__ run data get entity @s Rotation[1] 10
execute store result score $input_yaw retina.__variable__ run data get entity @s Rotation[0] 10
function retina:math/gimbal_to_vec
scoreboard players operation $x delta.api.launch = $output_vec3.X retina.__variable__
scoreboard players operation $x delta.api.launch *= 3 tf2.const
scoreboard players set $y delta.api.launch 7500
scoreboard players operation $z delta.api.launch = $output_vec3.Z retina.__variable__
scoreboard players operation $z delta.api.launch *= 3 tf2.const
function delta:api/launch_xyz
clear @s elytra{} 
scoreboard players set @s tf2.elytra_detect 0
scoreboard players add @s tf2.permanent.double_jumps 1
tag @s remove tf2.can_double_jump