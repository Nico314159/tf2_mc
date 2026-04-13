data modify storage tf2:summon entity.Pos set from storage tf2:summon resupply[-1].Pos
data modify storage tf2:summon entity.Rotation set from storage tf2:summon resupply[-1].Rotation
data modify storage tf2:summon entity.item set value {id:"white_dye",components:{"minecraft:item_model":"tf2:map_element/resupply_cabinet"}}
data modify storage tf2:summon entity.transformation.scale set value [1.0f,1.01f,1.0f]
data modify storage tf2:summon entity.transformation.translation set value [0.0f,1.0f,0.0f]
execute store success score @s tf2.team if score $i tf2.var < $blu_length tf2.var
scoreboard players add @s tf2.team 1
data modify entity @s {} merge from storage tf2:summon entity
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number
tag @s add tf2.resupply
function tf2:session/sync with storage tf2:index