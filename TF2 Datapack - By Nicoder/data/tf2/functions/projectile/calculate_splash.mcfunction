execute store result score $_centerDist_ tf2.var run data get storage retina:output Distance 52.49343832021
execute store result score $_splashEdge_ tf2.var run data get storage tf2.__temp__:vars radius 52.49343832021
execute as @e[tag=tf2.origin] at @s summon marker run function tf2:__private__/anonymous/18
execute at @s summon marker run function tf2:__private__/anonymous/19
scoreboard players operation $deltaX tf2.var = $Xf tf2.var
scoreboard players operation $deltaX tf2.var -= $X0 tf2.var
execute store result storage tf2.__temp__:summon pythag.X float 0.01 run scoreboard players get $deltaX tf2.var
scoreboard players operation $deltaY tf2.var = $Yf tf2.var
scoreboard players operation $deltaY tf2.var -= $Y0 tf2.var
execute store result storage tf2.__temp__:summon pythag.Y float 0.01 run scoreboard players get $deltaY tf2.var
scoreboard players operation $deltaZ tf2.var = $Zf tf2.var
scoreboard players operation $deltaZ tf2.var -= $Z0 tf2.var
execute store result storage tf2.__temp__:summon pythag.Z float 0.01 run scoreboard players get $deltaZ tf2.var
execute summon item_display run function tf2:__private__/anonymous/20 with storage tf2.__temp__:summon pythag
scoreboard players operation $_finalDamage_ tf2.var = $_damage_ tf2.var
execute on passengers run function tf2:__private__/anonymous/21
function tf2:weapons/calculate_falloff
scoreboard players operation $_finalDamage_ tf2.var *= $_multiplier_ tf2.var
scoreboard players add $_finalDamage_ tf2.var 99
scoreboard players operation $_finalDamage_ tf2.var /= 100 tf2.const
execute if entity @s[tag=tf2.closest_hit] if score $collided tf2.var matches 2.. run return run scoreboard players get $_finalDamage_ tf2.var
scoreboard players operation $_splash_multiplier_ tf2.var = $_centerDist_ tf2.var
scoreboard players operation $_splash_multiplier_ tf2.var *= 50 tf2.const
scoreboard players operation $_splash_multiplier_ tf2.var /= $_splashEdge_ tf2.var
scoreboard players operation $_splash_multiplier_ tf2.var *= -1 tf2.const
scoreboard players add $_splash_multiplier_ tf2.var 100
scoreboard players operation $_finalDamage_ tf2.var *= $_splash_multiplier_ tf2.var
scoreboard players add $_finalDamage_ tf2.var 99
scoreboard players operation $_finalDamage_ tf2.var /= 100 tf2.const
return run scoreboard players get $_finalDamage_ tf2.var