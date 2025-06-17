data modify storage tf2:summon entity.Pos set from storage tf2:summon doors[-1].Pos
data modify storage tf2:summon entity.Rotation set from storage tf2:summon doors[-1].Rotation
data modify storage tf2:summon entity.data set from storage tf2:summon doors[-1].data
execute store result score $direct_tp tf2.var run data get storage tf2:summon entity.data.direct_tp
execute unless score $direct_tp tf2.var matches 1.. run tag @s add tf2.visible
execute unless score $direct_tp tf2.var matches 1.. run data modify storage tf2:summon entity.data.direct_tp set value '~ ~ ~'
execute store success score $opp_team tf2.var if score $i tf2.var >= $blu_length tf2.var
scoreboard players add $opp_team tf2.var 1
execute store result storage tf2:summon entity.data.opp_team int 1 run scoreboard players get $opp_team tf2.var
data modify entity @s {} merge from storage tf2:summon entity
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number
tag @s add tf2.spawn_door
function tf2:session/sync with storage tf2:index