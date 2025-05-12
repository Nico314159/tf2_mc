scoreboard players operation @s tf2.player.id = @p[tag=origin] tf2.player.id
scoreboard players operation @s tf2.team = @p[tag=origin] tf2.team
item modify entity @s contents [{"function":"minecraft:set_custom_model_data","strings":{"values":["blu"],"mode":"insert"},"conditions":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"components":{"minecraft:custom_model_data":{"strings":["red"]}}}}}}]},{"function":"minecraft:set_custom_model_data","strings":{"values":["red"],"mode":"insert"},"conditions":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"components":{"minecraft:custom_model_data":{"strings":["blu"]}}}}}}]}]
scoreboard players set $motion_length tf2.var 0
scoreboard players operation $temp tf2.var = @s tf2.mot_x
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $motion_length tf2.var += $temp tf2.var
scoreboard players operation $temp tf2.var = @s tf2.mot_y
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $motion_length tf2.var += $temp tf2.var
scoreboard players operation $temp tf2.var = @s tf2.mot_z
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $motion_length tf2.var += $temp tf2.var
execute as @p[tag=origin] run function tf2:math/facing_vector
scoreboard players set $facing_length tf2.var 0
scoreboard players operation $temp tf2.var = $output_vector_x tf2.var
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $facing_length tf2.var += $temp tf2.var
scoreboard players operation $temp tf2.var = $output_vector_y tf2.var
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $facing_length tf2.var += $temp tf2.var
scoreboard players operation $temp tf2.var = $output_vector_z tf2.var
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $facing_length tf2.var += $temp tf2.var
scoreboard players operation $output_vector_x tf2.var *= $motion_length tf2.var
scoreboard players operation $output_vector_x tf2.var /= $facing_length tf2.var
scoreboard players operation @s tf2.mot_x = $output_vector_x tf2.var
scoreboard players operation $output_vector_y tf2.var *= $motion_length tf2.var
scoreboard players operation $output_vector_y tf2.var /= $facing_length tf2.var
scoreboard players operation @s tf2.mot_y = $output_vector_y tf2.var
scoreboard players operation $output_vector_z tf2.var *= $motion_length tf2.var
scoreboard players operation $output_vector_z tf2.var /= $facing_length tf2.var
scoreboard players operation @s tf2.mot_z = $output_vector_z tf2.var
data modify entity @s Rotation[0] set from entity @p[tag=origin] Rotation[0]
data modify entity @s Rotation[1] set from entity @p[tag=origin] Rotation[1]