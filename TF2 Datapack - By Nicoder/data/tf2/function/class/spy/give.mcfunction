scoreboard players set @s tf2.class 1
execute store result score @s tf2.max_health run scoreboard players set @s tf2.health 125
attribute @s minecraft:movement_speed base set 0.132
execute unless entity @s[tag=tf2.disguised,tag=!tf2.dead] run clear @s
loot replace entity @s hotbar.0 loot tf2:class/spy/revolver
loot replace entity @s hotbar.1 loot tf2:class/spy/sapper
loot replace entity @s hotbar.2 loot tf2:class/spy/butterfly_knife
loot replace entity @s hotbar.3 loot tf2:class/spy/disguise_kit
loot replace entity @s weapon.offhand loot tf2:class/spy/invis_watch
execute unless entity @s[tag=tf2.disguised,tag=!tf2.dead] run loot replace entity @s armor.legs loot tf2:class/spy/leg_model
execute unless entity @s[tag=tf2.disguised,tag=!tf2.dead] run loot replace entity @s armor.chest loot tf2:class/spy/chest_model
data modify storage tf2:lookup inventory set from entity @s Inventory
data modify storage tf2:lookup equipment set from entity @s equipment
execute store result score @s tf2.primary_maxClip store result score @s tf2.primary_clip run data get storage tf2:lookup inventory[0].components.minecraft:custom_data.attributes.clip
execute store result score @s tf2.primary_maxAmmo store result score @s tf2.primary_ammo run data get storage tf2:lookup inventory[0].components.minecraft:custom_data.attributes.ammo
execute store result score @s tf2.secondary_maxClip store result score @s tf2.secondary_clip store result score @s tf2.secondary_maxAmmo run scoreboard players set @s tf2.secondary_ammo 0
execute store result score @s tf2.cloak run data get storage tf2:lookup equipment.offhand.components.minecraft:custom_data.attributes.cloak_recharge 20
execute store result score @s tf2.is_invisible run scoreboard players set @s tf2.menu_ticks 0
tag @s remove tf2.disguised
tag @s remove tf2.in_disguise_menu