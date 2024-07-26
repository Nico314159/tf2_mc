execute if score @s tf2.class matches 7 run return fail
execute if score @s tf2.health matches ..0 run return fail
scoreboard players set @s tf2.afterburn_ticks 0
scoreboard players set @s[tag=!tf2.on_fire] tf2.afterburn_length 60
scoreboard players add @s[tag=tf2.on_fire] tf2.afterburn_length 30
scoreboard players operation @s tf2.afterburn_length < 200 tf2.const
tag @s add tf2.on_fire