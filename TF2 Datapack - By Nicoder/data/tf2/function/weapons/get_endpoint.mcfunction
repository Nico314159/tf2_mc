function iris:set_coordinates/main
data modify storage tf2:summon line.endX set from entity @s Pos[0]
data modify storage tf2:summon line.endY set from entity @s Pos[1]
data modify storage tf2:summon line.endZ set from entity @s Pos[2]
kill @s