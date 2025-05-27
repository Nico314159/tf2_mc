tag @s add tf2.player
execute summon marker run function tf2:__private__/anonymous/14
data modify storage tf2:vars distance set from storage iris:output Distance
tag @s remove tf2.player
execute if entity @s[tag=tf2.hit_by_projectile] run data modify storage tf2:vars distance set value 0
execute if entity @s[tag=tf2.hit_by_projectile] run function tf2:projectile/splash_damage
execute store result storage tf2:vars id int 1 run scoreboard players get @e[type=#tf2:player_like,tag=tf2.check,limit=1] iris.entity_id
data modify storage tf2:__storage__ currentObject set from storage iris:output TargetedEntity
execute store success score __bool_result__0 tf2.var run data modify storage tf2:__storage__ currentObject set from storage tf2:vars id
execute unless entity @s[tag=tf2.hit_by_projectile] if data storage iris:output {TargetType:"ENTITY"} if score __bool_result__0 tf2.var matches 0 run function tf2:projectile/splash_damage