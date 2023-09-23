scoreboard players set __math__.x_n tf2.var 1225
function tf2:__private__/math_sqrt/newton_raphson
scoreboard players operation __main__.x_n_sq tf2.var = __math__.x_n tf2.var
scoreboard players operation __main__.x_n_sq tf2.var *= __math__.x_n tf2.var
execute if score __main__.x_n_sq tf2.var > __math__.N tf2.var run scoreboard players remove __math__.x_n tf2.var 1