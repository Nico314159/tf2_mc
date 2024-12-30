scoreboard players operation @s tf2.player.id = @p[tag=origin] tf2.player.id
scoreboard players operation @s tf2.team = @p[tag=origin] tf2.team
scoreboard players operation $team_info tf2.var = @s tf2.model_number
scoreboard players operation $team_info tf2.var %= 1500 tf2.const
execute if score $team_info tf2.var matches 500..999 run scoreboard players add @s tf2.model_number 500
execute if score $team_info tf2.var matches 1000..1499 run scoreboard players remove @s tf2.model_number 500
item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":{"type":"minecraft:score","target":"this","score":"tf2.model_number"}}
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