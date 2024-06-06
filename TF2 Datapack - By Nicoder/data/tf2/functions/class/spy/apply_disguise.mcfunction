tag @s add self
execute if entity @s[tag=!tf2.disguised,scores={tf2.is_invisible=0}] run function tf2:class/spy/thick_smoke
execute if entity @s[tag=tf2.disguised,scores={tf2.is_invisible=0}] run function tf2:class/spy/light_smoke
tag @s remove self
tag @s add tf2.disguised