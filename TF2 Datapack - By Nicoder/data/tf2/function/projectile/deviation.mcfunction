execute store result score $input_pitch tf2.var run data get entity @s Rotation[1] 10
execute store result score $input_yaw tf2.var run data get entity @s Rotation[0] 10
function tf2:math/gimbal_to_matrix
execute store result score $horizontal_count tf2.var run scoreboard players set $vertical_count tf2.var 10
execute store result score $spread_least tf2.var run data get storage tf2:summon projectile.deviation.min
execute store result score $spread_most tf2.var run data get storage tf2:summon projectile.deviation.max
function tf2:math/sway_heave_surge/find
function tf2:math/sway_heave_surge/apply