execute if score @s tf2.team = $current tf2.team run return 0
data remove storage tf2:vars kill_verb
execute store result score $_distance_ tf2.var run data get storage retina:output Distance 1000
execute store result score $_hitHead_ tf2.var run data get storage retina:output HitEntityHead
execute if score $_distance_ tf2.var > $_range_ tf2.var run return 0
scoreboard players operation $_finalDamage_ tf2.var = $_damage_ tf2.var
function tf2:weapons/calculate_falloff
scoreboard players operation $_finalDamage_ tf2.var *= $_multiplier_ tf2.var
scoreboard players add $_finalDamage_ tf2.var 99
scoreboard players operation $_finalDamage_ tf2.var /= 100 tf2.const
data modify storage tf2:vars kill_verb set value 'killed'
execute if score $backstab tf2.var matches 1.. run data modify storage tf2:vars kill_verb set value 'backstabbed'
execute if score $backstab tf2.var matches 1.. run scoreboard players operation $_finalDamage_ tf2.var = @s tf2.max_health
execute if score $backstab tf2.var matches 1.. run scoreboard players operation $_finalDamage_ tf2.var *= 6 tf2.const
execute if score $_hitHead_ tf2.var matches 1.. if entity @a[tag=retina.executing,scores={tf2.class=2,tf2.time_scoped=4..}] run data modify storage tf2:vars kill_verb set value 'headshot'
scoreboard players operation $cause tf2.var = @a[tag=retina.executing,limit=1] tf2.player.id
scoreboard players operation $target tf2.var = @s tf2.player.id
execute if function tf2:damage/try_merge_into_last run return 1
data modify storage tf2:lookup damages append value {}
execute store result storage tf2:lookup damages[-1].cause int 1 run scoreboard players get $cause tf2.var
execute store result storage tf2:lookup damages[-1].target int 1 run scoreboard players get $target tf2.var
execute store result storage tf2:lookup damages[-1].amount int 1 run scoreboard players get $_finalDamage_ tf2.var
data modify storage tf2:lookup damages[-1].kill_verb set from storage tf2:vars kill_verb
return 1