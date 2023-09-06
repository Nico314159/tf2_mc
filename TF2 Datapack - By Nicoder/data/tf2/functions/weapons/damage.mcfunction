execute unless score $func_id retina.__variable__ matches 100 run return 0
execute unless predicate tf2:hide_ammo at @s run function tf2:__private__/anonymous/8
execute as @e[type=#tf2:player_like,scores={retina.hit=1..}] run function tf2:__private__/anonymous/9