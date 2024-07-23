kill @e[type=arrow,tag=!tf2.projectile]
execute store result score $offhand_CMD tf2.var run data get entity @s Inventory[{Slot:-106b}].components.minecraft:custom_model_data 0.00000001
execute if score $offhand_CMD tf2.var matches 4 run function tf2:class/spy/apply_disguise