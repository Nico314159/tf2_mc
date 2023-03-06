#> tf2:math/calculate_harmonic_series
#
# @within tf2:objectives/control_point/main
# @context any

execute if score $input tf2.var matches 1 run scoreboard players set $output tf2.var 1000
execute if score $input tf2.var matches 2 run scoreboard players set $output tf2.var 1500
execute if score $input tf2.var matches 3 run scoreboard players set $output tf2.var 1833
execute if score $input tf2.var matches 4 run scoreboard players set $output tf2.var 2083
