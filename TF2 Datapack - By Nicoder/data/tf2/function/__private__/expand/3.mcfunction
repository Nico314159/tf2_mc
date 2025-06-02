execute store result score $input_vector_x tf2.var run random value 2..6
scoreboard players operation $input_vector_x tf2.var %= 3 tf2.const
scoreboard players remove $input_vector_x tf2.var 1
scoreboard players operation $input_vector_x tf2.var *= 20 tf2.const