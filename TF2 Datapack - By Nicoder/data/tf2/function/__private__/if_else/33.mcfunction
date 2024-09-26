execute store result score @s[scores={tf2.class=1}] tf2.cloak run data get entity @s inventory[{Slot:-106b}].components.minecraft:custom_data.attributes.cloak_recharge 20
execute if score @s tf2.health >= @s tf2.max_health if score @s tf2.primary_clip = @s tf2.primary_maxClip if score @s tf2.primary_ammo = @s tf2.primary_maxAmmo if score @s tf2.secondary_clip = @s tf2.secondary_maxClip if score @s tf2.secondary_ammo = @s tf2.secondary_maxAmmo run return 0
function tf2:class_select
playsound tf2:pickup.resupply player @s ~ ~ ~ 1.5 0.8 0.2