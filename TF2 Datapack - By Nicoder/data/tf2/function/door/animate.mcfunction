scoreboard players operation @s tf2.door.vel *= 9 tf2.const
scoreboard players operation @s tf2.door.vel /= 10 tf2.const
scoreboard players operation @s tf2.door.vel += @s tf2.door.accel
scoreboard players operation @s tf2.door.pos += @s tf2.door.vel
function tf2:door/clamp
function tf2:door/projection with storage tf2:lookup entity.item.components.minecraft:custom_data