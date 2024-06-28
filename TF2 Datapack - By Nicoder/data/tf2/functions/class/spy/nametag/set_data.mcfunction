data modify entity @s CustomName set from block 0 0 0 item.components.minecraft:custom_name
data merge entity @s {CustomNameVisible:true,Age:-2147483647,NoGravity:true}
attribute @s minecraft:generic.scale base set 1.75
execute if score $disguise_team tf2.var matches 1 run team join RED @s
execute if score $disguise_team tf2.var matches 2 run team join BLU @s
execute store result score @s player_motion.internal.uuid.0 run data get storage player_motion:storage UUID[0]
execute store result score @s player_motion.internal.uuid.1 run data get storage player_motion:storage UUID[1]
execute store result score @s player_motion.internal.uuid.2 run data get storage player_motion:storage UUID[2]
execute store result score @s player_motion.internal.uuid.3 run data get storage player_motion:storage UUID[3]