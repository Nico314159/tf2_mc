execute if entity @s[tag=tf2.in_disguise_menu] run return run execute if items entity @s weapon.mainhand crossbow[custom_data~{disguise: true}] run tag @s remove tf2.in_disguise_menu
execute unless items entity @s weapon.mainhand crossbow[custom_data~{disguise: true}] run return run scoreboard players set @s tf2.menu_ticks 0
scoreboard players add @s tf2.menu_ticks 1
execute if score @s tf2.menu_ticks matches ..9 run return 0
tag @s add tf2.in_disguise_menu
scoreboard players set @s tf2.menu_ticks -10
execute store result score @s tf2.disguise.primary_CMD run data get entity @s Inventory[{Slot:3b}].components.minecraft:custom_model_data