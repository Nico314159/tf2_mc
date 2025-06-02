scoreboard players remove @s tf2.respawn_timer 1
execute if score @s tf2.respawn_timer matches 1.. run return 0
execute store result entity @s[scores={tf2.respawn_timer=0}] Item.components.minecraft:custom_model_data.floats[0] float 1 run scoreboard players get @s tf2.size
execute positioned ~ ~-500.5 ~ run ride @s[scores={tf2.respawn_timer=0}] mount @e[type=area_effect_cloud,distance=..0.01,limit=1]
execute if entity @s[tag=tf2.health_pack] as @a if score @s tf2.health = @s tf2.max_health run tag @s add tf2.ineligible
execute if entity @s[tag=tf2.ammo_pack] as @a if score @s tf2.primary_ammo = @s tf2.primary_maxAmmo if score @s tf2.primary_clip = @s tf2.primary_maxClip if score @s tf2.secondary_ammo = @s tf2.secondary_maxAmmo if score @s tf2.secondary_clip = @s tf2.secondary_maxClip run tag @s add tf2.ineligible
tag @a[scores={tf2.class=1,tf2.cloak=..599}] remove tf2.ineligible
tag @a[gamemode=spectator] add tf2.ineligible
tag @a[distance=..1.25,limit=1,sort=nearest,tag=!tf2.ineligible] add tf2.recipient
tag @a remove tf2.ineligible
execute unless score @s tf2.size = @s tf2.size run scoreboard players set @s tf2.size 2
scoreboard players operation $percent tf2.var = @s tf2.size
scoreboard players operation $percent tf2.var *= $percent tf2.var
scoreboard players add $percent tf2.var 1
scoreboard players operation $percent tf2.var *= 10 tf2.const
execute unless entity @a[tag=tf2.recipient] run return 1
execute if entity @s[tag=tf2.health_pack] as @a[tag=tf2.recipient] run function tf2:pickup/give_health
execute if entity @s[tag=tf2.ammo_pack] as @a[tag=tf2.recipient] run function tf2:pickup/give_ammo
scoreboard players set @s tf2.respawn_timer 200
data modify entity @s Item.components.minecraft:custom_model_data.floats[0] set value -1
ride @s[tag=!tf2.no_respawn] dismount
tp @s ~ ~500 ~
tag @a remove tf2.recipient
execute if entity @s[tag=!tf2.no_respawn] run return 2
execute on vehicle run tp @s ~ ~-500 ~
kill @s