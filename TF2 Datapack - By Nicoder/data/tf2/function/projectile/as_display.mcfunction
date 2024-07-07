execute if entity @s[tag=tf2.has_trail] at @s run function tf2:projectile/trail
function tf2:projectile/check_collision
execute as @e[type=#tf2:player_like,tag=tf2.batch] run function tf2:projectile/remove_tags
scoreboard players add @s tf2.age 1
execute if score @s tf2.age > @s tf2.lifetime run tag @s add tf2.cleanup
execute if entity @s[tag=tf2.cleanup] run function tf2:projectile/cleanup