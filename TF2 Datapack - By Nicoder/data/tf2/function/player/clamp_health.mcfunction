execute if entity @s[tag=!tf2.overheal] run return run scoreboard players operation @s tf2.health < @s tf2.max_health
scoreboard players operation $new_max tf2.var = @s tf2.max_health
scoreboard players operation $new_max tf2.var *= 3 tf2.const
scoreboard players operation $new_max tf2.var /= 2 tf2.const
scoreboard players operation @s tf2.health < $new_max tf2.var