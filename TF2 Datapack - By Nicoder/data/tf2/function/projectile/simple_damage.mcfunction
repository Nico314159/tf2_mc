execute unless entity @a[tag=tf2.hit,tag=tf2.opponent] run return fail
execute on vehicle on origin run tag @s add tf2.origin
scoreboard players operation $_finalDamage_ tf2.var = $_damage_ tf2.var
execute unless score $_temporalFalloff_ tf2.var matches 1.. run function tf2:projectile/pythagorean_3d
execute unless score $_temporalFalloff_ tf2.var matches 1.. run function tf2:weapons/calculate_falloff
execute if score $_temporalFalloff_ tf2.var matches 1.. run function tf2:projectile/temporal_falloff
scoreboard players operation $_finalDamage_ tf2.var *= $_multiplier_ tf2.var
scoreboard players add $_finalDamage_ tf2.var 99
scoreboard players operation $_finalDamage_ tf2.var /= 100 tf2.const
scoreboard players operation @p[tag=tf2.hit] tf2.health -= $_finalDamage_ tf2.var
damage @p[tag=tf2.hit] 0.01 tf2:screenshake
execute on vehicle on origin run tag @s remove tf2.origin