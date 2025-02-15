scoreboard players set @s tf2.class 7
execute store result score @s tf2.max_health run scoreboard players set @s tf2.health 125
attribute @s minecraft:movement_speed base set 0.132
clear @s
loot replace entity @s hotbar.0 loot tf2:class/engineer/shotgun
loot replace entity @s hotbar.1 loot tf2:class/engineer/pistol
loot replace entity @s hotbar.2 loot tf2:class/engineer/wrench
loot replace entity @s hotbar.3 loot tf2:class/engineer/construction_pda
loot replace entity @s hotbar.4 loot tf2:class/engineer/destruction_pda
loot replace entity @s armor.legs loot tf2:class/engineer/leg_model
loot replace entity @s armor.chest loot tf2:class/engineer/chest_model
data modify storage tf2:lookup inventory set from entity @s Inventory
execute store result score @s tf2.primary_maxClip store result score @s tf2.primary_clip run data get storage tf2:lookup inventory[0].components.minecraft:custom_data.attributes.clip
execute store result score @s tf2.primary_maxAmmo store result score @s tf2.primary_ammo run data get storage tf2:lookup inventory[0].components.minecraft:custom_data.attributes.ammo
execute store result score @s tf2.secondary_maxClip store result score @s tf2.secondary_clip run data get storage tf2:lookup inventory[1].components.minecraft:custom_data.attributes.clip
execute store result score @s tf2.secondary_maxAmmo store result score @s tf2.secondary_ammo run data get storage tf2:lookup inventory[1].components.minecraft:custom_data.attributes.ammo