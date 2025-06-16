tellraw @a "detonate_all_stickybombs called!"
scoreboard players operation $search tf2.player.id = @s tf2.player.id
execute as @e[tag=tf2.projectile] if score @s tf2.player.id = $search tf2.player.id if data entity @s item.components.minecraft:custom_data.projectile.explode_alt_fire at @s run function tf2:projectile/detonate_if_armed