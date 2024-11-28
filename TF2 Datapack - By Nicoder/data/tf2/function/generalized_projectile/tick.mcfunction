execute if entity @s[tag=tf2.has_trail] at @s run function tf2:projectile/trail
execute if entity @s[tag=tf2.animated] run function tf2:projectile/animate
execute if entity @s[tag=!tf2.stuck] run function tf2:motion/move
execute if entity @s[tag=!tf2.stuck] if data entity @s item.components.minecraft:custom_data.projectile.forces run function tf2:generalized_projectile/apply_forces
execute if score @s tf2.collision matches 1.. run function tf2:generalized_projectile/handle_block_collision
function tf2:generalized_projectile/check_entity_collision with storage tf2:vars
execute if score $hit_entity tf2.var matches 0 run tag @s add tf2.has_escaped_player
execute if score $hit_entity tf2.var matches 1 if entity @s[tag=tf2.has_escaped_player] run function tf2:generalized_projectile/handle_entity_collision
execute as @e[type=#tf2:player_like,tag=tf2.batch] run function tf2:projectile/remove_tags
scoreboard players add @s tf2.age 1
execute if score @s tf2.age > @s tf2.lifetime run tag @s add tf2.delete
execute if entity @s[tag=tf2.delete] run kill @s