scoreboard players set $natural_regen_amount tf2.var 3
execute if score @s tf2.ticks_since_hurt matches 60.. run scoreboard players add $natural_regen_amount tf2.var 1
execute if score @s tf2.ticks_since_hurt matches 120.. run scoreboard players add $natural_regen_amount tf2.var 1
execute if score @s tf2.ticks_since_hurt matches 180.. run scoreboard players add $natural_regen_amount tf2.var 1
scoreboard players operation @s tf2.health += $natural_regen_amount tf2.var
scoreboard players operation @s tf2.health < @s tf2.max_health