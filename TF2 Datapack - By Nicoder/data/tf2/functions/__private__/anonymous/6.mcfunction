tellraw @a ["0: ",{"nbt":"Pos","entity":"@s"}]
execute if score $offset_Y retina.__variable__ matches 776..778 run tp @s ~ ~1.62 ~
execute if score $offset_Y retina.__variable__ matches 608..610 run tp @s ~ ~1.27 ~
execute if score $offset_Y retina.__variable__ matches 192 run tp @s ~ ~0.40 ~
tellraw @a ["begin: ",{"nbt":"Pos","entity":"@s"}]
execute at @s summon minecraft:marker run function tf2:__private__/anonymous/5
kill @s