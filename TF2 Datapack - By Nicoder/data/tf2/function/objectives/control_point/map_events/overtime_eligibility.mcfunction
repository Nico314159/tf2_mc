execute if score @s[scores={tf2.team=1}] tf2.red_progress < @s[scores={tf2.team=1}] tf2.capture_threshold run return run tag @s add tf2.overtime
execute if score @s[scores={tf2.team=2}] tf2.blu_progress < @s[scores={tf2.team=2}] tf2.capture_threshold run return run tag @s add tf2.overtime
execute if score @s tf2.team matches 0 unless entity @s[scores={tf2.red_progress=0,tf2.blu_progress=0}] run return run tag @s add tf2.overtime
tag @s remove tf2.overtime
return 0