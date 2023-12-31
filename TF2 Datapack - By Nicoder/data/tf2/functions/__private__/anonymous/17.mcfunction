data modify storage tf2.__temp__:summon entity.Pos set from storage tf2.__temp__:summon resupply[-1].Pos
data modify storage tf2.__temp__:summon entity.Rotation set from storage tf2.__temp__:summon resupply[-1].Rotation
data modify storage tf2.__temp__:summon entity.item.id set value "gold_ingot"
data modify storage tf2.__temp__:summon entity.item.Count set value 1b
execute store success score @s tf2.team if score $i tf2.var < $blu_length tf2.var
scoreboard players add @s tf2.team 1
data modify entity @s {} merge from storage tf2.__temp__:summon entity
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number
tag @s add tf2.resupply