data modify entity @s NoAI set value 1b
data merge storage retina:input {MaxRecursionDepth:127b,VerticalCount:1,HorizontalCount:1,CenteredCount:0,TargetEntities:true}
rotate @s facing entity @e[tag=tf2.player,limit=1] eyes
function retina:traverse/setup
kill @s