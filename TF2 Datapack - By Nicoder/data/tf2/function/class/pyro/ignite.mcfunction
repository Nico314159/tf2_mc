execute if score @s tf2.class matches 7 run return fail
execute if score @s tf2.health matches ..0 run return fail
scoreboard players set @s tf2.afterburn_ticks 0
scoreboard players set @s tf2.afterburn_length 200
tag @s add tf2.on_fire