scoreboard players set @s tf2.health 1000
function tf2:player/clamp_health
scoreboard players operation @s tf2.primary_clip = @s tf2.primary_maxClip
scoreboard players operation @s tf2.primary_ammo = @s tf2.primary_maxAmmo
scoreboard players operation @s tf2.secondary_clip = @s tf2.secondary_maxClip
scoreboard players operation @s tf2.secondary_ammo = @s tf2.secondary_maxAmmo
execute if score @s tf2.class matches 1 store result score @s tf2.cloak run data get entity @s equipment.offhand.components.minecraft:custom_data.attributes.cloak_recharge 20
execute if score @s[tag=tf2.dead] tf2.class matches 9 run function tf2:class/medic/drop_uber_on_death