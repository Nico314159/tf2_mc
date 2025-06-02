execute store result score $_centerDist_ tf2.var run data get storage tf2:vars distance 52.493
execute store result score $_splashEdge_ tf2.var run data get storage tf2:vars radius 52.493
function tf2:projectile/pythagorean_3d
function tf2:weapons/calculate_falloff
scoreboard players operation $_finalDamage_ tf2.var = $_damage_ tf2.var
scoreboard players operation $_finalDamage_ tf2.var *= $_multiplier_ tf2.var
scoreboard players add $_finalDamage_ tf2.var 99
scoreboard players operation $_finalDamage_ tf2.var /= 100 tf2.const
execute if entity @s[tag=tf2.hit_by_projectile,tag=!tf2.origin] run return run scoreboard players get $_finalDamage_ tf2.var
execute if entity @s[tag=tf2.origin] run scoreboard players operation $_finalDamage_ tf2.var = $_selfDamage_ tf2.var
scoreboard players operation $_splash_multiplier_ tf2.var = $_centerDist_ tf2.var
scoreboard players operation $_splash_multiplier_ tf2.var *= -50 tf2.const
scoreboard players operation $_splash_multiplier_ tf2.var /= $_splashEdge_ tf2.var
scoreboard players add $_splash_multiplier_ tf2.var 100
scoreboard players operation $_finalDamage_ tf2.var *= $_splash_multiplier_ tf2.var
scoreboard players add $_finalDamage_ tf2.var 99
scoreboard players operation $_finalDamage_ tf2.var /= 100 tf2.const
execute unless entity @s[tag=tf2.origin,scores={tf2.class=4..5}] run return run scoreboard players get $_finalDamage_ tf2.var
execute if score $playersHurt tf2.var matches 2.. run return run scoreboard players get $_finalDamage_ tf2.var
scoreboard players operation $_finalDamage_ tf2.var *= 3 tf2.const
scoreboard players set $_temp_ tf2.var 9
scoreboard players operation $_temp_ tf2.var -= @s tf2.class
scoreboard players operation $_finalDamage_ tf2.var /= $_temp_ tf2.var
return run scoreboard players get $_finalDamage_ tf2.var