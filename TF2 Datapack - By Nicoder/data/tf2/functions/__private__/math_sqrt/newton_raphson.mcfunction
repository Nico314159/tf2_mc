scoreboard players operation __math__.x tf2.var = __math__.x_n tf2.var
scoreboard players operation __math__.x_n tf2.var = __math__.N tf2.var
scoreboard players operation __math__.x_n tf2.var /= __math__.x tf2.var
scoreboard players operation __math__.x_n tf2.var += __math__.x tf2.var
scoreboard players operation __math__.x_n tf2.var /= 2 tf2.const
scoreboard players operation __math__.different tf2.var = __math__.x tf2.var
scoreboard players operation __math__.different tf2.var -= __math__.x_n tf2.var
execute unless score __math__.different tf2.var matches 0..1 run function tf2:__private__/math_sqrt/newton_raphson