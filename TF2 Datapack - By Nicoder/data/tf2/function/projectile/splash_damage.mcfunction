function tf2:projectile/calculate_splash
scoreboard players operation @s tf2.health -= $_finalDamage_ tf2.var
scoreboard players operation $_totalDamage_ tf2.var = $_finalDamage_ tf2.var
scoreboard players add $playersHurt tf2.var 1
damage @s 0.01 tf2:screenshake by @a[tag=tf2.origin,limit=1]
function tf2:projectile/knockback
execute if entity @s[tag=tf2.said_death_msg] run return 1
execute if score @s tf2.health matches 1.. run return run execute if entity @s[tag=!tf2.origin] as @a[tag=tf2.origin] at @s run playsound tf2:ding.hit player @s ~ ~ ~ 0.9 1.2 0.05
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
data modify storage tf2:vars kill_verb set value 'blew up'
tellraw @a[tag=tf2.current] ["",{"selector":"@a[tag=tf2.origin]","type":"selector"},{"text":" "},{"type":"nbt","source":"storage","nbt":"kill_verb","interpret":false,"storage":"tf2:vars"},{"text":" "},{"selector":"@s","type":"selector"},{"text":" with "},{"type":"nbt","source":"storage","nbt":"weapon_name","interpret":true,"storage":"tf2:vars"}]
execute if entity @s[tag=!tf2.origin] as @a[tag=tf2.origin] at @s run playsound tf2:ding.kill player @s ~ ~ ~ 0.9 1 0.05
tag @a remove tf2.current
tag @s add tf2.said_death_msg