data modify storage tf2:lookup pos set from entity @s Pos
execute store result score @s tf2.x run data get storage tf2:lookup pos[0] 1000
execute store result score @s tf2.y run data get storage tf2:lookup pos[1] 1000
execute store result score @s tf2.z run data get storage tf2:lookup pos[2] 1000