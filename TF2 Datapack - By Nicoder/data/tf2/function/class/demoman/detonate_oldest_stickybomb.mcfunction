tag @e remove tf2.my_stickybomb
scoreboard players operation $search tf2.player.id = @s tf2.player.id
execute as @e[tag=tf2.projectile] if score @s tf2.player.id = $search tf2.player.id if data entity @s item.components.minecraft:custom_data.projectile.explode_alt_fire run tag @s add tf2.my_stickybomb
execute store result score $stickybomb_count tf2.var if entity @e[tag=tf2.my_stickybomb]
execute store result score $stickybomb_max tf2.var run data get entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.projectile.explode_alt_fire
execute if score $stickybomb_count tf2.var <= $stickybomb_max tf2.var run return fail
scoreboard players set $oldest tf2.age 0
scoreboard players operation $oldest tf2.age > @e[tag=tf2.my_stickybomb] tf2.age
execute as @e[tag=tf2.my_stickybomb] if score @s tf2.age = $oldest tf2.age at @s run function tf2:projectile/detonate_if_armed
tag @e remove tf2.my_stickybomb