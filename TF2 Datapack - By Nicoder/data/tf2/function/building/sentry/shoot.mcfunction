execute if score @s tf2.attack_delay matches 1.. run return fail
execute at @s positioned ~ ~1 ~ anchored eyes facing entity @n[tag=tf2.sentry_target] feet run function tf2:raycast/informational
execute unless entity @n[tag=tf2.sentry_target,tag=iris.targeted_entity] run return run function tf2:building/sentry/target_has_cover
scoreboard players operation $current tf2.team = @s tf2.team
tellraw @a ["",{"text":"self "},{"score":{"name":"@s","objective":"tf2.team"},"type":"score"}]
tellraw @a ["",{"text":"current "},{"score":{"name":"$current","objective":"tf2.team"},"type":"score"}]
scoreboard players set $_rangeDependent_ tf2.var 1
scoreboard players set $_damage_ tf2.var 16
scoreboard players set $_range_ tf2.var 20955
scoreboard players set $_maxRamp_ tf2.var 120
execute store result score $_rangeDependent_ tf2.var unless predicate tf2:uniform_damage
data remove storage tf2:raycast direction
execute at @s positioned ~ ~1 ~ facing entity @n[tag=tf2.sentry_target] feet run function tf2:raycast/damaging
scoreboard players add @s[scores={tf2.sentry.level=1}] tf2.attack_delay 5000
scoreboard players add @s[scores={tf2.sentry.level=2..3}] tf2.attack_delay 2500
scoreboard players remove @s tf2.primary_ammo 1
return 1