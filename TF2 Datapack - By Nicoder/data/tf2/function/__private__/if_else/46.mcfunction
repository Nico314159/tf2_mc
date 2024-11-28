execute if entity @s[tag=!tf2.has_hit_wall,tag=!tf2.sticky] run return run function tf2:grenade/explode
execute if entity @s[tag=!tf2.has_hit_object] run function tf2:__private__/if_else/45
tag @s add tf2.has_hit_object