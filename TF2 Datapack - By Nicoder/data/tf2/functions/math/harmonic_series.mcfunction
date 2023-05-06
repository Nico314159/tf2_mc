#> tf2:math/harmonic_series
#
# Calculates the nth partial sum of the harmonic series. (1 + 1/2 + 1/3 + ... + 1/n)
#
# @public
# @context any
# @input
#   score $bound tf2.var 
#       The upper bound of summation (i.e. how many fractions to sum up).
# @output
#   score $sum tf2.var
#       The result of the sum, scaled up by 1000. (ex: 1.5 becomes 1500)  
# @writes
#   score $index tf2.var 
#       Temporary variable for the index of summation (denominator of the current term).
#   score $add tf2.var
#       Temporary variable for the current term on this iteration of the loop. (equal to 1000 / $index) 
scoreboard players set $sum tf2.var 0
scoreboard players set $index tf2.var 1
execute if score $index tf2.var <= $bound tf2.var run function tf2:__private__/for_loop/0