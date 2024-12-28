tag @e remove tf2.my_stickybomb
scoreboard players operation $search tf2.player.id = @s tf2.player.id
execute as @e[tag=tf2.projectile] if score @s tf2.player.id = $search tf2.player.id if data entity @s item.components.minecraft:custom_data.projectile.explode_alt_fire run tag @s add tf2.my_stickybomb
execute as @e[tag=tf2.my_stickybomb] at @s run particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0.1 50
kill @e[tag=tf2.my_stickybomb]