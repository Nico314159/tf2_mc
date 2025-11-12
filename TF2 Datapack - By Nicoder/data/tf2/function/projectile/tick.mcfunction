execute if entity @s[tag=tf2.has_trail] on passengers rotated as @s run function tf2:projectile/trail
execute if entity @s[tag=tf2.animated] run function tf2:projectile/animate
execute if entity @s[tag=!tf2.stuck] run function tf2:motion/move
execute if entity @s[tag=tf2.delayed_elasticity] run function tf2:__private__/if_else/22
execute if score @s tf2.collision_entity matches 0 run tag @s add tf2.has_escaped_player
execute if entity @s[tag=!tf2.stuck] if data entity @s item.components.minecraft:custom_data.projectile.forces run function tf2:projectile/apply_forces
execute if score @s[tag=tf2.has_escaped_player] tf2.collision_entity matches 1 run function tf2:projectile/handle_entity_collision
execute if score @s[scores={tf2.collision_entity=0}] tf2.collision matches 1.. run function tf2:projectile/handle_block_collision
execute if entity @s[tag=!tf2.stuck] run function tf2:projectile/handle_rotation
scoreboard players add @s tf2.age 1
execute if score @s tf2.age > @s tf2.lifetime run function tf2:projectile/end_of_life
execute as @e[type=#tf2:player_like,tag=tf2.same_batch] run function tf2:projectile/remove_tags
execute if entity @s[tag=tf2.delete] run function tf2:__private__/if_else/23