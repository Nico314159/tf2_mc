scoreboard players set @s tf2.class 6
execute store result score @s tf2.max_health run scoreboard players set @s tf2.health 300
attribute @s minecraft:movement_speed base set 0.0924
clear @s
loot replace entity @s hotbar.0 loot tf2:class/heavy/minigun_decoy
loot replace entity @s weapon.offhand loot tf2:class/heavy/minigun_spinning
loot replace entity @s hotbar.1 loot tf2:class/heavy/shotgun
loot replace entity @s hotbar.2 loot tf2:class/heavy/right_fist
loot replace entity @s armor.legs loot tf2:class/heavy/leg_model
loot replace entity @s armor.chest loot tf2:class/heavy/chest_model
data modify storage tf2:lookup inventory set from entity @s Inventory
data modify storage tf2:lookup equipment set from entity @s equipment
execute store result score @s tf2.primary_maxClip store result score @s tf2.primary_clip run data get storage tf2:lookup equipment.offhand.components.minecraft:custom_data.attributes.clip
execute store result score @s tf2.primary_maxAmmo store result score @s tf2.primary_ammo run data get storage tf2:lookup equipment.offhand.components.minecraft:custom_data.attributes.ammo
execute store result score @s tf2.secondary_maxClip store result score @s tf2.secondary_clip run data get storage tf2:lookup inventory[1].components.minecraft:custom_data.attributes.clip
execute store result score @s tf2.secondary_maxAmmo store result score @s tf2.secondary_ammo run data get storage tf2:lookup inventory[1].components.minecraft:custom_data.attributes.ammo
execute store result score @s tf2.rev_threshold run data get storage tf2:lookup equipment.offhand.components.minecraft:custom_data.attributes.spinupDelay 20000