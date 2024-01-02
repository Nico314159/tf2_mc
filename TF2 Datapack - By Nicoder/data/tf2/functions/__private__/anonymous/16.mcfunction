data modify storage tf2.__temp__:summon entity.Pos set from storage tf2.__temp__:summon pickups[-1].Pos
data modify storage tf2.__temp__:summon entity.item.id set value "iron_ingot"
data modify storage tf2.__temp__:summon entity.item.Count set value 1b
data modify storage tf2.__temp__:summon entity.transformation set value {translation:[0.0f,0.75f,0.0f]}
data modify storage tf2.__temp__:summon entity.transformation merge value {right_rotation:{axis:[1f,0f,0f],angle:0f}}
function tf2:__private__/anonymous/15 with storage tf2.__temp__:summon pickups[-1]
execute store result score @s tf2.size run data get storage tf2.__temp__:summon pickups[-1].size
scoreboard players set $model_number tf2.var 10
scoreboard players operation $model_number tf2.var += @s tf2.size
execute if entity @s[tag=tf2.ammo_pack] run scoreboard players add $model_number tf2.var 10
execute if score $model_number tf2.var matches 11 run data modify storage tf2.__temp__:summon entity.transformation.right_rotation.angle set value 0.45f
execute if score $model_number tf2.var matches 12 run data modify storage tf2.__temp__:summon entity.transformation.right_rotation.angle set value 5.22f
execute store result storage tf2.__temp__:summon entity.item.tag.CustomModelData int 1 run scoreboard players get $model_number tf2.var
data modify entity @s {} merge from storage tf2.__temp__:summon entity
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number
tag @s add tf2.pickup