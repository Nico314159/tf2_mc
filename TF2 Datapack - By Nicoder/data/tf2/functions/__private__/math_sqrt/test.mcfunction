execute store result score __math__.N tf2.var run random value 1..10000
tellraw @s [{"text":"Input: ","color":"aqua"},{"score":{"name":"__math__.N","objective":"tf2.var"},"color":"red"}]
function tf2:__private__/math_sqrt/main
tellraw @a [{"text":"Newton Iterations: ","color":"gold"},{"score":{"name":"__math__.newton_iterations","objective":"tf2.var"},"color":"red"}]