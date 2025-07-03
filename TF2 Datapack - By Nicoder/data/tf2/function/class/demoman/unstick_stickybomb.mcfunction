tag @s add tf2.self
execute summon marker run function tf2:__private__/anonymous/0
tag @s remove tf2.self
tellraw @a ["",{"text":"output vector = "},{"score":{"name":"$output_vector_x","objective":"tf2.var"},"type":"score"},{"text":", "},{"score":{"name":"$output_vector_y","objective":"tf2.var"},"type":"score"},{"text":", "},{"score":{"name":"$output_vector_z","objective":"tf2.var"},"type":"score"}]
scoreboard players operation @s tf2.mot_x = $output_vector_x tf2.var
scoreboard players set @s tf2.mot_y 1000
scoreboard players operation @s tf2.mot_y -= $output_vector_y tf2.var
scoreboard players operation @s tf2.mot_z = $output_vector_z tf2.var
tag @s remove tf2.stuck