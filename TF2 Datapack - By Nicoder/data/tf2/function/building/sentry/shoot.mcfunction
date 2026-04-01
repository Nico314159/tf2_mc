execute if score @s tf2.attack_delay matches 1.. run return fail
execute at @s anchored eyes facing entity @n[tag=tf2.sentry_target] feet run function tf2:raycast/informational
execute unless entity @n[tag=tf2.sentry_target,tag=iris.targeted_entity] run return fail
data modify storage tf2:vars distance set from storage iris:output Distance
scoreboard players set $_rangeDependent_ tf2.var 1
scoreboard players set $_damage_ tf2.var 16
scoreboard players set $_maxRamp_ tf2.var 120
function tf2:weapons/calculate_falloff
execute at @s positioned ~ ~1 ~ facing entity @n[tag=tf2.sentry_target] feet run function tf2:weapons/draw_line
scoreboard players operation $_finalDamage_ tf2.var = $_damage_ tf2.var
scoreboard players operation $_finalDamage_ tf2.var *= $_multiplier_ tf2.var
scoreboard players add $_finalDamage_ tf2.var 99
scoreboard players operation $_finalDamage_ tf2.var /= 100 tf2.const
data modify storage tf2:lookup damages append value {}
execute store result storage tf2:lookup damages[-1].cause int 1 run scoreboard players get @s tf2.player.id
execute store result storage tf2:lookup damages[-1].target int 1 run scoreboard players get @n[tag=tf2.sentry_target] tf2.player.id
execute store result storage tf2:lookup damages[-1].amount int 1 run scoreboard players get $_finalDamage_ tf2.var
data modify storage tf2:lookup damages[-1].kill_verb set value 'shot'
scoreboard players add @s[scores={tf2.sentry.level=1}] tf2.attack_delay 5000
scoreboard players add @s[scores={tf2.sentry.level=2..3}] tf2.attack_delay 2500
return 1