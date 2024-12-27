execute if entity @s[tag=tf2.has_trail] at @s run function tf2:projectile/trail
execute if entity @s[tag=tf2.animated] run function tf2:projectile/animate
execute if entity @s[tag=!tf2.stuck] run function tf2:motion/move
execute if score @s tf2.collision matches 1.. run function tf2:generalized_projectile/handle_block_collision
execute if entity @s[tag=!tf2.stuck] run function tf2:generalized_projectile/handle_rotation
execute if entity @s[tag=!tf2.stuck] if data entity @s item.components.minecraft:custom_data.projectile.forces run function tf2:generalized_projectile/apply_forces
scoreboard players operation $width tf2.var = @s tf2.hitbox_x
scoreboard players set $margin tf2.var 500
scoreboard players operation $width tf2.var += $margin tf2.var
scoreboard players operation $width tf2.var > 1000 tf2.const
execute store result storage tf2:vars offset float 0.0005 run scoreboard players get $width tf2.var
scoreboard players remove $width tf2.var 1000
execute store result storage tf2:vars volume float 0.001 run scoreboard players get $width tf2.var
function tf2:generalized_projectile/check_entity_collision with storage tf2:vars
execute if score $hit_entity tf2.var matches 0 run tag @s add tf2.has_escaped_player
execute if score $hit_entity tf2.var matches 1 if entity @s[tag=tf2.has_escaped_player] run function tf2:generalized_projectile/handle_entity_collision
scoreboard players add @s tf2.age 1
execute if score @s tf2.age > @s tf2.lifetime run function tf2:generalized_projectile/end_of_life
kill @s[tag=tf2.delete]
execute as @e[type=#tf2:player_like,tag=tf2.batch] run function tf2:projectile/remove_tags