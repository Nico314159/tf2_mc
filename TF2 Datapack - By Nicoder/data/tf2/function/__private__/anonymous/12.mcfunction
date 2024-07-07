data modify entity @s NoAI set value 1b
data modify storage retina:input MaxRecursionDepth set value 127b
tp @s ~ ~ ~ facing entity @e[tag=tf2.player,limit=1] eyes
function retina:traverse/setup
kill @s