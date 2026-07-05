summon item_display ~ ~1.001 ~ {Tags:["tf2.base","tf2.can_be_shot"],item:{id:"minecraft:white_dye",components:{"minecraft:item_model":"tf2:building/sentry_gun_base","minecraft:custom_model_data":{floats:[1]},}},Passengers:[{id:"minecraft:item_display",Rotation:[0.0f,0.0f],Tags:["tf2.sentry","tf2.can_be_shot","tf2.new"],CustomName:"Sentry Gun",CustomNameVisible:false,item:{id:"minecraft:white_dye",components:{"minecraft:item_model":"tf2:building/sentry_gun","minecraft:custom_model_data":{floats:[1,1]},}}}]}
scoreboard players operation $id tf2.var = @s tf2.player.id
scoreboard players operation $batch tf2.var = @s tf2.batch_number
execute as @n[tag=tf2.new] store result entity @s item.components.minecraft:custom_model_data.floats[0] int 1 run execute store result score @s tf2.team run data get storage tf2:summon sentry.team
execute as @n[tag=tf2.new] store result entity @s item.components.minecraft:custom_model_data.floats[1] int 1 run execute store result score @s tf2.sentry.level run data get storage tf2:summon sentry.level
execute as @n[tag=tf2.new] on vehicle run data modify entity @s item.components.minecraft:custom_model_data.floats[0] set from storage tf2:summon sentry.level
execute as @n[tag=tf2.new] run scoreboard players set @s tf2.primary_ammo 200
execute as @n[tag=tf2.new] run scoreboard players set @s tf2.attack_delay 0
execute as @n[tag=tf2.new] run scoreboard players operation @s tf2.player.id > @e tf2.player.id
execute as @n[tag=tf2.new] run scoreboard players add @s tf2.player.id 1
execute as @n[tag=tf2.new] run scoreboard players operation @s tf2.batch_number = $batch tf2.var
execute as @n[tag=tf2.new] run scoreboard players set @s tf2.hitbox 1500
execute as @n[tag=tf2.new] run scoreboard players set @s tf2.health 150
execute as @n[tag=tf2.new] run tag @s remove tf2.new