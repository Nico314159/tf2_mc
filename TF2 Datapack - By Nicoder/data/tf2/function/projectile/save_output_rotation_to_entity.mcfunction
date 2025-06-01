scoreboard players operation @s tf2.quaternion_r = $output_quaternion_r tf2.var
scoreboard players operation @s tf2.quaternion_i = $output_quaternion_i tf2.var
scoreboard players operation @s tf2.quaternion_j = $output_quaternion_j tf2.var
scoreboard players operation @s tf2.quaternion_k = $output_quaternion_k tf2.var
data modify storage tf2:gren rotation set value [0.0f,0.0f,0.0f,1.0f]
execute store result storage tf2:gren rotation[3] float 0.001 run scoreboard players get @s tf2.quaternion_r
execute store result storage tf2:gren rotation[0] float 0.001 run scoreboard players get @s tf2.quaternion_i
execute store result storage tf2:gren rotation[1] float 0.001 run scoreboard players get @s tf2.quaternion_j
execute store result storage tf2:gren rotation[2] float 0.001 run scoreboard players get @s tf2.quaternion_k
data modify entity @s transformation.right_rotation set from storage tf2:gren rotation