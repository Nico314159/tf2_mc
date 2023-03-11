#> tf2:math/calculate_harmonic_series/loop
#
# @within
#    tf2:math/calculate_harmonic_series/main
#    tf2:math/calculate_harmonic_series/loop
# @context any


scoreboard players set $add tf2.var 1000
scoreboard players operation $add tf2.var /= $loop tf2.var
scoreboard players operation $sum tf2.var += $add tf2.var
scoreboard players add $loop tf2.var 1
execute if score $loop tf2.var <= $bound tf2.var run function tf2:math/calculate_harmonic_series/loop