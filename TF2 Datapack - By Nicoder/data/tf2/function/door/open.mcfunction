tag @s add tf2.is_open
tag @s remove tf2.anim_over
scoreboard players set @s tf2.door.accel 414
execute store result score $x_from tf2.var run data get storage tf2:summon entity.Pos[0]
execute store result score $x_to tf2.var run data get storage tf2:summon entity.item.components.minecraft:custom_data.size_x
scoreboard players operation $x_to tf2.var += $x_from tf2.var
scoreboard players remove $x_to tf2.var 1
scoreboard players operation $x_to tf2.var > $x_from tf2.var
execute store result storage tf2:summon entity.item.components.minecraft:custom_data.fill.x_from int 1 run scoreboard players get $x_from tf2.var
execute store result storage tf2:summon entity.item.components.minecraft:custom_data.fill.x_to int 1 run scoreboard players get $x_to tf2.var
execute store result score $y_from tf2.var run data get storage tf2:summon entity.Pos[1]
execute store result score $y_to tf2.var run data get storage tf2:summon entity.item.components.minecraft:custom_data.size_y
scoreboard players operation $y_to tf2.var += $y_from tf2.var
scoreboard players remove $y_to tf2.var 1
scoreboard players operation $y_to tf2.var > $y_from tf2.var
execute store result storage tf2:summon entity.item.components.minecraft:custom_data.fill.y_from int 1 run scoreboard players get $y_from tf2.var
execute store result storage tf2:summon entity.item.components.minecraft:custom_data.fill.y_to int 1 run scoreboard players get $y_to tf2.var
execute store result score $z_from tf2.var run data get storage tf2:summon entity.Pos[2]
execute store result score $z_to tf2.var run data get storage tf2:summon entity.item.components.minecraft:custom_data.size_z
scoreboard players operation $z_to tf2.var += $z_from tf2.var
scoreboard players remove $z_to tf2.var 1
scoreboard players operation $z_to tf2.var > $z_from tf2.var
execute store result storage tf2:summon entity.item.components.minecraft:custom_data.fill.z_from int 1 run scoreboard players get $z_from tf2.var
execute store result storage tf2:summon entity.item.components.minecraft:custom_data.fill.z_to int 1 run scoreboard players get $z_to tf2.var
data modify storage tf2:summon entity.item.components.minecraft:custom_data.fill.block set from storage tf2:summon doors[-1].block
function tf2:door/remove_blocks with entity @s item.components.minecraft:custom_data.fill