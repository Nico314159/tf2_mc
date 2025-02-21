data modify storage tf2:summon entity.Pos set from storage tf2:summon objectives[-1].Pos
data modify storage tf2:summon entity.Tags set from storage tf2:summon objectives[-1].Tags
data modify storage tf2:summon entity.item set value {id:"white_dye",components:{"minecraft:item_model":"tf2:map_element/control_point"}}
data modify storage tf2:summon entity.transformation.translation set value [0.0f,0.5f,0.0f]
data modify entity @s item_display set value 'ground'
data modify entity @s {} merge from storage tf2:summon entity
tag @s add tf2.objective
execute store result score @s tf2.team run data get storage tf2:summon objectives[-1].data.team 1
execute store result score @s tf2.capture_threshold run data get storage tf2:summon objectives[-1].data.capture_threshold 20000
execute store result score @s tf2.increment run data get storage tf2:summon objectives[-1].data.increment 20
scoreboard players operation @s tf2.gamemode = $temp tf2.gamemode
scoreboard players operation @s tf2.index = $temp tf2.index
scoreboard players operation $highest tf2.index > @s tf2.index
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number
scoreboard players operation @s[scores={tf2.team=1}] tf2.red_progress = @s tf2.capture_threshold
scoreboard players operation @s[scores={tf2.team=2}] tf2.blu_progress = @s tf2.capture_threshold
execute if score @s tf2.index = $highest tf2.index unless score @s tf2.gamemode matches 3 run tag @s add tf2.last
tag @s[scores={tf2.index=0,tf2.gamemode=2}] add tf2.last