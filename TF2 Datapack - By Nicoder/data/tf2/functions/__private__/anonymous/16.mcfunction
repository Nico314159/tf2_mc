data modify storage tf2.__temp__:summon entity.Pos set from storage tf2.__temp__:summon pickups[-1].Pos
data modify storage tf2.__temp__:summon entity.item.id set value "iron_ingot"
data modify storage tf2.__temp__:summon entity.item.Count set value 1b
data modify storage tf2.__temp__:summon entity.transformation set value {translation:[0.0f,1.0f,0.0f]}
function tf2:__private__/anonymous/15 with storage tf2.__temp__:summon pickups[-1]
execute store result score @s tf2.size run data get storage tf2.__temp__:summon pickups[-1].size
data modify entity @s {} merge from storage tf2.__temp__:summon entity
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number
tag @s add tf2.pickup