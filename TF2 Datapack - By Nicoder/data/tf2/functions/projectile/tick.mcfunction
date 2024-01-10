execute on passengers run tag @s add tf2.passenger_temp
data modify entity @s Motion set from entity @e[type=item_display,tag=tf2.passenger_temp,limit=1] item.tag.Motion
tag @e[type=item_display,tag=tf2.passenger_temp] remove tf2.passenger_temp
scoreboard players operation $temp tf2.team = @s tf2.team
execute as @a unless score @s tf2.team = $temp tf2.team run tag @s add tf2.enemy
execute on origin run tag @s add tf2.enemy
scoreboard players set $should_explode tf2.var 0
execute if data entity @s {inGround: 1b} run scoreboard players set $should_explode tf2.var 1
execute if entity @a[tag=tf2.enemy,distance=..0.1] run scoreboard players set $should_explode tf2.var 1
tag @a[tag=tf2.enemy] remove tf2.enemy
execute if score $should_explode tf2.var matches 1.. run function tf2:projectile/explode