tag @e remove tf2.my_stickybomb
scoreboard players operation $search tf2.player.id = @s tf2.player.id
execute as @e[tag=tf2.projectile] if score @s tf2.player.id = $search tf2.player.id if data entity @s item.components.minecraft:custom_data.projectile.explode_manually run tag @s add tf2.my_stickybomb
execute as @e[tag=tf2.my_stickybomb] run function tf2:__private__/anonymous/0