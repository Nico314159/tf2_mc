execute if score @s tf2.team = $current tf2.team run return 0
execute if entity @s[gamemode=spectator] run return 0
execute store result score $_distance_ tf2.var run data get storage retina:output Distance 1000
execute store result score $_hitHead_ tf2.var run data get storage retina:output HitEntityHead
execute if score $_distance_ tf2.var > $_range_ tf2.var run return 0
scoreboard players operation $_finalDamage_ tf2.var = $_damage_ tf2.var
function tf2:weapons/calculate_falloff
scoreboard players operation $_finalDamage_ tf2.var *= $_multiplier_ tf2.var
scoreboard players add $_finalDamage_ tf2.var 99
scoreboard players operation $_finalDamage_ tf2.var /= 100 tf2.const
scoreboard players operation @s tf2.health -= $_finalDamage_ tf2.var
scoreboard players operation $_totalDamage_ tf2.var += $_finalDamage_ tf2.var
damage @s 0.01 tf2:screenshake by @a[tag=retina.executing,limit=1]
execute if entity @s[tag=tf2.said_death_msg] run return 1
execute if score @s tf2.health matches 1.. run return run playsound tf2:ding.hit player @a[tag=retina.executing,predicate=!tf2:holding_melee] ~ ~ ~ 0.9 1 0.05
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
scoreboard players set __if_else__ tf2.var 0
execute if score $_hitHead_ tf2.var matches 1.. if entity @a[tag=retina.executing, scores={tf2.class=2, tf2.time_scoped=4..}] run function tf2:__private__/if_else/9
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/10
tag @a remove tf2.current
tag @s add tf2.said_death_msg