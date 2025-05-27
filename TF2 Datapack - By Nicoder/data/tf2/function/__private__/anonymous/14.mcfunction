data modify entity @s NoAI set value 1b
rotate @s facing entity @e[tag=tf2.player,limit=1] eyes
function tf2:raycast/informational
kill @s