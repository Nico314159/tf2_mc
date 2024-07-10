execute if entity @s[tag=tf2.has_trail] at @s run function tf2:projectile/trail
execute if entity @s[tag=tf2.flight_accel,tag=!tf2.drag] run function tf2:projectile/flight_accel/as_display
execute if entity @s[tag=tf2.flight_accel,tag=tf2.drag] on vehicle run function tf2:projectile/flight_accel/as_arrow
function tf2:projectile/check_collision
execute as @e[type=#tf2:player_like,tag=tf2.batch] run function tf2:projectile/remove_tags
scoreboard players add @s tf2.age 1
execute if score @s tf2.age > @s tf2.lifetime run tag @s add tf2.cleanup
execute if entity @s[tag=tf2.cleanup] run function tf2:projectile/cleanup