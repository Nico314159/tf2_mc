execute store result score @s tf2.door.pos run data get storage tf2:lookup entity.transformation.translation[1] 10000
execute store result score $closed_goal tf2.var run data get storage tf2:lookup entity.item.components.minecraft:custom_data.goal_positions.closed 10000
execute store result score $min_goal tf2.var store result score $max_goal tf2.var run data get storage tf2:lookup entity.item.components.minecraft:custom_data.goal_positions.open 10000
scoreboard players operation $min_goal tf2.var < $closed_goal tf2.var
scoreboard players operation $max_goal tf2.var > $closed_goal tf2.var
scoreboard players operation @s tf2.door.vel *= 9 tf2.const
scoreboard players operation @s tf2.door.vel /= 10 tf2.const
scoreboard players operation @s tf2.door.vel += @s tf2.door.accel
scoreboard players operation @s tf2.door.pos += @s tf2.door.vel
function tf2:door/clamp
function tf2:door/projection