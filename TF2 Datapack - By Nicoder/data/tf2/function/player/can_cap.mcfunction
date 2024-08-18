tag @s remove tf2.unable_to_cap
execute if entity @s[tag=tf2.disguised] run return run tag @s add tf2.unable_to_cap
execute if entity @s[scores={tf2.is_invisible=0}] run return run tag @s add tf2.unable_to_cap
tag @s add tf2.on_point