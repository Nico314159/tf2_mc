#> tf2:objectives/control_point/main
# 
# @within tf2:objectives/control_point/check_for_players
# @context marker & position

# amount of capture progress is nth harmonic number
scoreboard players operation $bound tf2.var > $red_on_point tf2.var
scoreboard players operation $bound tf2.var > $blu_on_point tf2.var
function tf2:math/calculate_harmonic_series/main

# apply capture progress to team that has players on point, but you can't capture a point you already own
execute if score $red_on_point tf2.var matches 1.. unless score @s tf2.team matches 1 run function tf2:objectives/control_point/capture_progress/red
execute if score $blu_on_point tf2.var matches 1.. unless score @s tf2.team matches 2 run function tf2:objectives/control_point/capture_progress/blu

execute if score @s tf2.red_progress >= @s tf2.capture_threshold run function tf2:objectives/control_point/set_owner/red
execute if score @s tf2.blu_progress >= @s tf2.capture_threshold run function tf2:objectives/control_point/set_owner/blu


