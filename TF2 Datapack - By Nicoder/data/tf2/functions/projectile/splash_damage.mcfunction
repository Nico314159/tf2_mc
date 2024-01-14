function tf2:projectile/calculate_splash
scoreboard players operation @s tf2.health -= $_finalDamage_ tf2.var
damage @s 0.01 tf2:screenshake by @a[tag=tf2.origin,limit=1]
function tf2:projectile/knockback
execute if entity @s[tag=tf2.said_death_msg] run return 1
execute if score @s tf2.health matches 1.. run return run playsound tf2:ding.hit player @a[tag=tf2.origin] ~ ~ ~ 0.9 1 0.05
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
tellraw @a[tag=tf2.current] ["",{"selector":"@a[tag=tf2.origin]","type":"selector"},{"text":" blew up "},{"selector":"@s","type":"selector"},{"text":" with "},{"type":"nbt","source":"entity","nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@a[tag=tf2.origin]"}]
playsound tf2:ding.kill player @a[tag=tf2.origin] ~ ~ ~ 0.9 1 0.05
tag @a remove tf2.current
tag @s add tf2.said_death_msg