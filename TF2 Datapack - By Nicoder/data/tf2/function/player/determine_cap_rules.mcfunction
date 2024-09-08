tag @s add tf2.on_point
tag @s remove tf2.can_cap
tag @s remove tf2.can_defend
execute if entity @s[tag=tf2.disguised] run return fail
execute if entity @s[scores={tf2.is_invisible=0}] run return fail
execute if entity @s[tag=tf2.uber] run return run tag @s add tf2.can_defend
tag @s add tf2.can_cap
tag @s add tf2.can_defend