tag @s remove tf2.is_open
tag @s remove tf2.anim_over
scoreboard players set @s tf2.time_open 0
scoreboard players set @s tf2.door.vel 0
execute store result score @s tf2.door.accel run data get storage tf2:lookup entity.item.components.minecraft:custom_data.goal_positions.closed 10000
execute store result score @s tf2.door.pos run data get storage tf2:lookup entity.transformation.translation[1] 10000
scoreboard players operation @s tf2.door.accel -= @s tf2.door.pos
scoreboard players operation @s tf2.door.accel *= 2 tf2.const
scoreboard players operation @s tf2.door.accel /= 225 tf2.const