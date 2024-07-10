execute unless entity @a[tag=tf2.hit,tag=tf2.opponent,scores={tf2.health=1..}] run return fail
execute on vehicle on origin run tag @s add tf2.origin
scoreboard players operation $_finalDamage_ tf2.var = $_damage_ tf2.var
execute unless score $_temporalFalloff_ tf2.var matches 1.. run function tf2:projectile/pythagorean_3d
execute unless score $_temporalFalloff_ tf2.var matches 1.. run function tf2:weapons/calculate_falloff
execute if score $_temporalFalloff_ tf2.var matches 1.. run function tf2:projectile/temporal_falloff
scoreboard players operation $_finalDamage_ tf2.var *= $_multiplier_ tf2.var
scoreboard players add $_finalDamage_ tf2.var 99
scoreboard players operation $_finalDamage_ tf2.var /= 100 tf2.const
scoreboard players operation @p[tag=tf2.hit] tf2.health -= $_finalDamage_ tf2.var
damage @p[tag=tf2.hit] 0.01 tf2:screenshake
data modify storage tf2:summon number.X set from entity @s Pos[0]
data modify storage tf2:summon number.Y set from entity @s Pos[1]
data modify storage tf2:summon number.Z set from entity @s Pos[2]
execute store result storage tf2:summon number.value int 1 run scoreboard players get $_finalDamage_ tf2.var
execute if score $_finalDamage_ tf2.var matches 1.. run function tf2:hud/damage_numbers with storage tf2:summon number
execute if score @p[tag=tf2.hit] tf2.health matches 1.. run return run execute on vehicle on origin run tag @s remove tf2.origin
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
data modify storage tf2:vars kill_verb set value 'killed'
tellraw @a[tag=tf2.current] ["",{"selector":"@a[tag=tf2.origin]","type":"selector"},{"text":" "},{"type":"nbt","source":"storage","nbt":"kill_verb","interpret":false,"storage":"tf2:vars"},{"text":" "},{"selector":"@p[tag=tf2.hit]","type":"selector"},{"text":" with "},{"type":"nbt","source":"storage","nbt":"weapon_name","interpret":true,"storage":"tf2:vars"}]