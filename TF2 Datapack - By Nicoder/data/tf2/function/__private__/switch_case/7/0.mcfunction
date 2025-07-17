data modify storage tf2:vars id set value {}
execute store result storage tf2:vars id.id int 1 run scoreboard players get @n[tag=tf2.hit_by_projectile] tf2.player.id
function tf2:projectile/verify_no_previous_hit with storage tf2:vars
data modify entity @s item.components.minecraft:custom_data.projectile.list append from storage tf2:vars id
tag @s remove tf2.delete