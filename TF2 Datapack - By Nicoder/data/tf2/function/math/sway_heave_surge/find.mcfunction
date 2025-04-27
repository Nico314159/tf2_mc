scoreboard players operation $input_vector_x tf2.var = $i tf2.var
scoreboard players operation $input_vector_x tf2.var *= 2 tf2.const
scoreboard players add $input_vector_x tf2.var 10
scoreboard players operation $input_vector_x tf2.var -= $horizontal_count tf2.var
execute if score $horizontal_count tf2.var matches 10 store result score $input_vector_x tf2.var run random value 2..6
execute if score $horizontal_count tf2.var matches 10 run scoreboard players operation $input_vector_x tf2.var %= 3 tf2.const
execute if score $horizontal_count tf2.var matches 10 run scoreboard players remove $input_vector_x tf2.var 1
execute if score $horizontal_count tf2.var matches 10 run scoreboard players operation $input_vector_x tf2.var *= 20 tf2.const
scoreboard players operation __math__.rng.bound tf2.var = $spread_most tf2.var
scoreboard players operation __math__.rng.bound tf2.var -= $spread_least tf2.var
scoreboard players add __math__.rng.bound tf2.var 1
function tf2:__private__/math_random/main
scoreboard players operation $spread tf2.var = __math__.rng.result tf2.var
scoreboard players operation $spread tf2.var += $spread_least tf2.var
scoreboard players operation $input_vector_x tf2.var *= $spread tf2.var
scoreboard players operation $input_vector_x tf2.var /= 100 tf2.const
scoreboard players operation $input_vector_y tf2.var = $j tf2.var
scoreboard players operation $input_vector_y tf2.var *= 2 tf2.const
scoreboard players add $input_vector_y tf2.var 10
scoreboard players operation $input_vector_y tf2.var -= $vertical_count tf2.var
execute if score $vertical_count tf2.var matches 10 store result score $input_vector_y tf2.var run random value 2..6
execute if score $vertical_count tf2.var matches 10 run scoreboard players operation $input_vector_y tf2.var %= 3 tf2.const
execute if score $vertical_count tf2.var matches 10 run scoreboard players remove $input_vector_y tf2.var 1
execute if score $vertical_count tf2.var matches 10 run scoreboard players operation $input_vector_y tf2.var *= 20 tf2.const
scoreboard players operation __math__.rng.bound tf2.var = $spread_most tf2.var
scoreboard players operation __math__.rng.bound tf2.var -= $spread_least tf2.var
scoreboard players add __math__.rng.bound tf2.var 1
function tf2:__private__/math_random/main
scoreboard players operation $spread tf2.var = __math__.rng.result tf2.var
scoreboard players operation $spread tf2.var += $spread_least tf2.var
scoreboard players operation $input_vector_y tf2.var *= $spread tf2.var
scoreboard players operation $input_vector_y tf2.var /= 100 tf2.const
scoreboard players set $input_vector_z tf2.var 500
execute if score $debug_messages tf2.var matches 1.. run tellraw @a ["",{"text":"Input Vector: "},{"text":"[","color":"red","italic":true,"type":"text"},{"score":{"name":"$input_vector_x","objective":"tf2.var"},"italic":true,"color":"red","type":"score"},{"text":", ","italic":true,"color":"red"},{"score":{"name":"$input_vector_y","objective":"tf2.var"},"italic":true,"color":"red","type":"score"},{"text":", ","italic":true,"color":"red"},{"score":{"name":"$input_vector_z","objective":"tf2.var"},"italic":true,"color":"red","type":"score"},{"text":"]","italic":true,"color":"red"}]