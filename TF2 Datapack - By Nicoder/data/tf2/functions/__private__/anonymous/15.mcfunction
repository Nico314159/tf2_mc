execute store result score $next_diff_X tf2.var store result score $diff_X tf2.var run data get entity @s Pos[0] 1000
scoreboard players operation $diff_X tf2.var -= $proj_X tf2.var
scoreboard players operation $next_diff_X tf2.var -= $next_proj_X tf2.var
execute store result score $next_diff_Y tf2.var store result score $diff_Y tf2.var run data get entity @s Pos[1] 1000
scoreboard players operation $diff_Y tf2.var -= $proj_Y tf2.var
scoreboard players operation $next_diff_Y tf2.var -= $next_proj_Y tf2.var
execute store result score $next_diff_Z tf2.var store result score $diff_Z tf2.var run data get entity @s Pos[2] 1000
scoreboard players operation $diff_Z tf2.var -= $proj_Z tf2.var
scoreboard players operation $next_diff_Z tf2.var -= $next_proj_Z tf2.var
kill