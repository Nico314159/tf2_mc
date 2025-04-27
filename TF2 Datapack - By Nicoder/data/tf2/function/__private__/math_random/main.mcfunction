scoreboard players operation __math__.seed tf2.var *= __math__.rng.a tf2.var
scoreboard players operation __math__.seed tf2.var += __math__.rng.c tf2.var
scoreboard players operation __math__.rng.result tf2.var = __math__.seed tf2.var
scoreboard players operation __math__.tmp tf2.var = __math__.rng.result tf2.var
scoreboard players operation __math__.rng.result tf2.var %= __math__.rng.bound tf2.var
scoreboard players operation __math__.tmp tf2.var -= __math__.rng.result tf2.var
scoreboard players operation __math__.tmp tf2.var += __math__.rng.bound tf2.var
execute if score __math__.tmp tf2.var matches ..0 run function tf2:__private__/math_random/main