tag @s add tf2.player
execute summon marker at @s run function tf2:__private__/anonymous/19
tag @s remove tf2.player
data modify storage tf2:__storage__ currentObject set from storage retina:output TargetedEntity.UUID
execute store success score __bool_result__0 tf2.var run data modify storage tf2:__storage__ currentObject set from entity @e[type=#tf2:player_like,tag=tf2.check,limit=1] UUID
execute if data storage retina:output {Target: "ENTITY"} if score __bool_result__0 tf2.var matches 0 run function tf2:projectile/splash_damage
data modify storage tf2.__temp__:summon number.X set from storage retina:output ContactCoordinates[0]
data modify storage tf2.__temp__:summon number.Y set from storage retina:output ContactCoordinates[1]
data modify storage tf2.__temp__:summon number.Z set from storage retina:output ContactCoordinates[2]
execute store result storage tf2.__temp__:summon number.value int 1 run scoreboard players get $_finalDamage_ tf2.var
execute if score $_finalDamage_ tf2.var matches 1.. run function tf2:weapons/damage_numbers with storage tf2.__temp__:summon number