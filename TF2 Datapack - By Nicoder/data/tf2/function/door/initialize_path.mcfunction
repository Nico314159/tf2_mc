data modify storage tf2:summon entity.Pos set from storage tf2:summon doors[-1].Pos
data modify storage tf2:summon entity.item set value {id:"white_dye",components:{"minecraft:item_model":"tf2:map_element/door/standard_metal"}}
data modify storage tf2:summon entity.item_display set value 'ground'
data modify storage tf2:summon entity.item.components.minecraft:custom_data.path set from storage tf2:summon doors[-1].path
data modify storage tf2:summon entity.item.components.minecraft:custom_data.size_x set from storage tf2:summon doors[-1].size[0]
data modify storage tf2:summon entity.item.components.minecraft:custom_data.size_y set from storage tf2:summon doors[-1].size[1]
data modify storage tf2:summon entity.item.components.minecraft:custom_data.size_z set from storage tf2:summon doors[-1].size[2]
data modify storage tf2:summon entity.transformation.scale set from storage tf2:summon doors[-1].size
execute store result score @s tf2.door.wait run data get storage tf2:summon doors[-1].wait
execute store result score @s tf2.door.length run data get storage tf2:summon doors[-1].path_length 10000
scoreboard players add @s tf2.door.length 10
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
data modify entity @s item merge from storage tf2:summon entity.item
scoreboard players set @s tf2.door.state 4
execute if data storage tf2:summon doors[-1].state store result score @s tf2.door.state run data get storage tf2:summon doors[-1].state
data modify entity @s {} merge from storage tf2:summon entity
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number
tag @s add tf2.door
tag @s add tf2.anim_over
execute if score $i tf2.door.id = $i tf2.door.id run scoreboard players operation @s tf2.door.id = $i tf2.door.id
function tf2:session/sync with storage tf2:index