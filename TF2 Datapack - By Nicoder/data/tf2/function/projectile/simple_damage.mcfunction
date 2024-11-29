execute unless entity @a[tag=tf2.hit,tag=tf2.opponent,scores={tf2.health=1..}] run return fail
scoreboard players operation $temp tf2.player.id = @s tf2.player.id
execute as @a if score @s tf2.player.id = $temp tf2.player.id run tag @s add tf2.origin
scoreboard players operation $_finalDamage_ tf2.var = $_damage_ tf2.var
execute unless score $_temporalFalloff_ tf2.var matches 1.. run function tf2:projectile/pythagorean_3d
execute unless score $_temporalFalloff_ tf2.var matches 1.. run function tf2:weapons/calculate_falloff
execute if score $_temporalFalloff_ tf2.var matches 1.. run function tf2:projectile/temporal_falloff
scoreboard players operation $_finalDamage_ tf2.var *= $_multiplier_ tf2.var
scoreboard players add $_finalDamage_ tf2.var 99
scoreboard players operation $_finalDamage_ tf2.var /= 100 tf2.const
data modify storage tf2:lookup damages append value {}
execute store result storage tf2:lookup damages[-1].cause int 1 run scoreboard players get @s tf2.player.id
execute store result storage tf2:lookup damages[-1].target int 1 run scoreboard players get @p[tag=tf2.hit] tf2.player.id
execute store result storage tf2:lookup damages[-1].amount int 1 run scoreboard players get $_finalDamage_ tf2.var
data modify storage tf2:lookup damages[-1].kill_verb set value 'killed'
data modify storage tf2:lookup damages[-1].weapon set from storage tf2:vars weapon_name
data modify storage tf2:vars callbacks set from entity @s item.components.minecraft:custom_data.attributes.on_hit
data modify storage tf2:vars callback set from storage tf2:vars callbacks[0]
execute if data storage tf2:vars callbacks[] run function tf2:projectile/callbacks with storage tf2:vars