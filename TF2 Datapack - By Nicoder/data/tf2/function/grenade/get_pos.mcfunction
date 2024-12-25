data modify storage tf2:grenade pos set from entity @s Pos
execute store result score @s tf2.x run data get storage tf2:grenade pos[0] 1000
execute store result score @s tf2.y run data get storage tf2:grenade pos[1] 1000
execute store result score @s tf2.z run data get storage tf2:grenade pos[2] 1000