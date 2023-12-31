scoreboard players remove @s tf2.respawn_timer 1
execute if score @s tf2.respawn_timer matches 1.. run return 0
data merge entity @s {item:{id:"minecraft:iron_ingot",Count:1b}}
scoreboard players add @s tf2.rotation 0
scoreboard players add @s tf2.rotation 1
data modify storage tf2.__temp__:vars rotation set value {axis:[0f,0f,0f],angle:0f}
data modify storage tf2.__temp__:vars rotation.axis set value [0.0f,1.0f,0.0f]
execute store result storage tf2.__temp__:vars rotation.angle float 0.1 run scoreboard players get @s tf2.rotation
data modify entity @s transformation.right_rotation set from storage tf2.__temp__:vars rotation
execute if entity @s[tag=tf2.health_pack] as @a if score @s tf2.health = @s tf2.max_health run tag @s add tf2.ineligible
execute if entity @s[tag=tf2.ammo_pack] as @a if score @s tf2.primary_ammo = @s tf2.primary_maxAmmo if score @s tf2.primary_clip = @s tf2.primary_maxClip if score @s tf2.secondary_ammo = @s tf2.secondary_maxAmmo if score @s tf2.secondary_clip = @s tf2.secondary_maxClip run tag @s add tf2.ineligible
tag @a[gamemode=spectator] add tf2.ineligible
execute at @s as @a[distance=..1,limit=1,sort=nearest,tag=!tf2.ineligible] run tag @s add tf2.recipient
tag @a remove tf2.ineligible
scoreboard players operation $percent tf2.var = @s tf2.size
scoreboard players operation $percent tf2.var *= $percent tf2.var
scoreboard players add $percent tf2.var 1
scoreboard players operation $percent tf2.var *= 10 tf2.const
execute unless entity @a[tag=tf2.recipient] run return 1
scoreboard players operation $add_amount tf2.var = $percent tf2.var
execute if entity @s[tag=tf2.health_pack] run function tf2:__private__/if_else/43
execute if entity @s[tag=tf2.ammo_pack] run function tf2:__private__/if_else/44
scoreboard players set @s tf2.respawn_timer 200
data modify entity @s item.Count set value 0b
tag @a remove tf2.recipient