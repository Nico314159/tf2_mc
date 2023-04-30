#> tf2:math/calculate_harmonic_series/main
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

scoreboard players set $index tf2.var 1
scoreboard players set $sum tf2.var 0
function tf2:math/calculate_harmonic_series/loop
