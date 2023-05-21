#> tf2:objectives/control_point/main
# 
# @within tf2:objectives/control_point/check_for_players
# @context CP entity & position
# @input
#   score $(red/blu)_on_point tf2.var
#       Number of RED/BLU players on the point. Determines how much progress to add and to which team.
# @writes
#   score $bound tf2.var
#       Used as input for `tf2:math/harmonic_series`.
# @reads 
#   score @s tf2.team
#       Current owners of the control point (1 = RED, 2 = BLU). Prevents invalid capture progress from being added.
#   score @s tf2.(red/blu)_progress
#   score @s tf2.capture_threshold
#       Variables describing the state of the control point. Used for visuals.
# amount of capture progress is nth partial sum of harmonic series
scoreboard players operation $bound tf2.var > $red_on_point tf2.var
scoreboard players operation $bound tf2.var > $blu_on_point tf2.var
scoreboard players operation $bound tf2.var < 4 tf2.const
function tf2:math/harmonic_series
# apply capture progress to team that has players on point, but you can't capture a point you already own
execute if score $red_on_point tf2.var matches 1.. unless score @s tf2.team matches 1 run function tf2:objectives/control_point/capture_progress/red
execute if score $blu_on_point tf2.var matches 1.. unless score @s tf2.team matches 2 run function tf2:objectives/control_point/capture_progress/blu
execute if score @s tf2.team matches 2 if score @s tf2.blu_progress < @s tf2.capture_threshold run function tf2:objectives/control_point/visuals/capture_progress/red/main
execute if score @s tf2.team matches 0 if score @s tf2.blu_progress matches 0 run function tf2:objectives/control_point/visuals/capture_progress/red/main
execute if score @s tf2.team matches 1 if score @s tf2.red_progress < @s tf2.capture_threshold run function tf2:objectives/control_point/visuals/capture_progress/blu/main
execute if score @s tf2.team matches 0 if score @s tf2.red_progress matches 0 run function tf2:objectives/control_point/visuals/capture_progress/blu/main