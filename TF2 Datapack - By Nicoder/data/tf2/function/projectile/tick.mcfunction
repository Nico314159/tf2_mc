execute if entity @s[tag=tf2.has_trail] at @s run function tf2:projectile/trail
data modify storage tf2:vars Motion set from entity @s item.components.minecraft:custom_data.Motion
data modify storage tf2:vars Pos set from entity @s Pos
execute if entity @s[tag=!tf2.drag] on passengers run data modify entity @s Motion set from storage tf2:vars Motion
execute on passengers run data modify entity @s Pos[0] set from storage tf2:vars Pos[0]
execute on passengers run data modify entity @s Pos[2] set from storage tf2:vars Pos[2]
execute if entity @s[tag=tf2.flight_accel,tag=!tf2.drag] run function tf2:projectile/flight_accel/as_display
execute if entity @s[tag=tf2.flight_accel,tag=tf2.drag] on vehicle run function tf2:projectile/flight_accel/as_arrow
function tf2:projectile/check_collision
execute as @e[type=#tf2:player_like,tag=tf2.batch] run function tf2:projectile/remove_tags
scoreboard players add @s tf2.age 1
execute if score @s tf2.age > @s tf2.lifetime run tag @s add tf2.cleanup
execute if entity @s[tag=tf2.cleanup] run function tf2:projectile/cleanup