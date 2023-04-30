#> tf2:math/calculate_harmonic_series/loop
#
# @within
#    tf2:math/calculate_harmonic_series/main
#    tf2:math/calculate_harmonic_series/loop
# @context any
# @writes
#   score $index tf2.var 
#       Temporary variable for the index of summation (denominator of the current term).
#   score $add tf2.var
#       Temporary variable for the current term on this iteration of the loop. (equal to 1000 / $index)

scoreboard players set $add tf2.var 1000
scoreboard players operation $add tf2.var /= $index tf2.var
scoreboard players operation $sum tf2.var += $add tf2.var
scoreboard players add $index tf2.var 1
execute if score $index tf2.var <= $bound tf2.var run function tf2:math/calculate_harmonic_series/loop