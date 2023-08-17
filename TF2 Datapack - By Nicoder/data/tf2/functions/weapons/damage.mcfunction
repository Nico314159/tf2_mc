execute unless score $func_id retina.__variable__ matches 100 run return 0
execute as @e[tag=retina.executing] at @s summon minecraft:item_display run function tf2:__private__/anonymous/4
execute as @e[type=#tf2:player_like,scores={retina.hit=1..}] run function tf2:__private__/anonymous/5