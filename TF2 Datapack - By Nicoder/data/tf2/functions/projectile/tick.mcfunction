execute on passengers run tag @s add tf2.passenger_temp
data modify entity @s Motion set from entity @e[type=item_display,tag=tf2.passenger_temp,limit=1] item.tag.Motion
tag @e[type=item_display,tag=tf2.passenger_temp] remove tf2.passenger_temp
function tf2:projectile/check_collision
execute as @e[type=#tf2:player_like,tag=tf2.batch] run function tf2:projectile/remove_tags
execute if entity @s[tag=tf2.cleanup] run return run function tf2:projectile/cleanup
scoreboard players add @s tf2.age 1