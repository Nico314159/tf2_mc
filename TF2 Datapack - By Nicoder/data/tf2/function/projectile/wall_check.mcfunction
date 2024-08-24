tag @s add tf2.player
execute summon marker at @s run function tf2:__private__/anonymous/13
tag @s remove tf2.player
execute if entity @s[tag=tf2.hit] run data modify storage retina:output Distance set value 0
execute if entity @s[tag=tf2.hit] run function tf2:projectile/splash_damage
data modify storage tf2:__storage__ currentObject set from storage retina:output TargetedEntity.UUID
execute store success score __bool_result__0 tf2.var run data modify storage tf2:__storage__ currentObject set from entity @e[type=#tf2:player_like,tag=tf2.check,limit=1] UUID
execute unless entity @s[tag=tf2.hit] if data storage retina:output {Target:"ENTITY"} if score __bool_result__0 tf2.var matches 0 run function tf2:projectile/splash_damage