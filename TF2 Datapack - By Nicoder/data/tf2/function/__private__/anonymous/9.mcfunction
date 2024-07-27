execute if score $offset_Y retina.__variable__ matches 776..778 run tp @s ~ ~1.42 ~
execute if score $offset_Y retina.__variable__ matches 608..610 run tp @s ~ ~1.07 ~
execute if score $offset_Y retina.__variable__ matches 192 run tp @s ~ ~0.20 ~
tag @s add tf2.height
data modify storage tf2:summon line.X set from entity @s Pos[0]
data modify storage tf2:summon line.Y set from entity @s Pos[1]
data modify storage tf2:summon line.Z set from entity @s Pos[2]
kill @s