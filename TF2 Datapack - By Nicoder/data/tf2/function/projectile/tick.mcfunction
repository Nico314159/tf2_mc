execute on passengers run tag @s add tf2.passenger_temp
data modify entity @s[tag=!tf2.drag] Motion set from entity @e[type=item_display,tag=tf2.passenger_temp,limit=1] item.components.minecraft:custom_data.Motion
tag @e[type=item_display,tag=tf2.passenger_temp] remove tf2.passenger_temp
execute if entity @s[tag=tf2.has_trail] on passengers at @s run function tf2:projectile/trail
function tf2:projectile/check_collision
execute as @e[type=#tf2:player_like,tag=tf2.batch] run function tf2:projectile/remove_tags
scoreboard players add @s tf2.age 1
execute if score @s tf2.age > @s tf2.lifetime run tag @s add tf2.cleanup
execute if entity @s[tag=tf2.cleanup] run function tf2:projectile/cleanup