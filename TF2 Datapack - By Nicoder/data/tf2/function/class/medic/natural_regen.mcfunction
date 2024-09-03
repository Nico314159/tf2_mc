scoreboard players set $natural_regen_amount tf2.var 3
execute if score @s tf2.ticks_since_hurt matches 60.. run scoreboard players add $natural_regen_amount tf2.var 1
execute if score @s tf2.ticks_since_hurt matches 120.. run scoreboard players add $natural_regen_amount tf2.var 1
execute if score @s tf2.ticks_since_hurt matches 180.. run scoreboard players add $natural_regen_amount tf2.var 1
tag @s add self
execute as @e[type=#tf2:player_like] if score @s tf2.player.id = @p[tag=self] tf2.heal_target if score @s tf2.health < @s tf2.max_health run scoreboard players operation $natural_regen_amount tf2.var *= 2 tf2.const
tag @s remove self
scoreboard players operation @s tf2.health += $natural_regen_amount tf2.var
scoreboard players operation @s tf2.health < @s tf2.max_health