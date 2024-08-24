execute if score @s tf2.health matches ..0 run return fail
execute as @a[tag=tf2.is_playing] if score @s tf2.player.id = $cause tf2.var run tag @s add tf2.cause
scoreboard players operation @s tf2.health -= $amount tf2.var
damage @s 0.01 tf2:screenshake by @a[tag=tf2.cause,limit=1]
execute unless entity @a[tag=tf2.cause] run damage @s 0.01 tf2:screenshake
data modify storage tf2:lookup damages[-1].X set from entity @s Pos[0]
data modify storage tf2:lookup damages[-1].Z set from entity @s Pos[2]
execute store result score $Y tf2.var run data get entity @s Pos[1] 10
scoreboard players add $Y tf2.var 1
execute store result storage tf2:lookup damages[-1].Y float 0.1 run scoreboard players get $Y tf2.var
execute as @a[tag=tf2.cause,limit=1] run function tf2:hud/damage_numbers with storage tf2:lookup damages[-1]
execute if score @s tf2.health matches 1.. run return run execute unless entity @s[tag=tf2.cause] as @a[tag=tf2.cause,predicate=!tf2:holding_melee] at @s run playsound tf2:ding.hit player @s ~ ~ ~ 0.8 1.2 0.05
execute if entity @s[tag=tf2.said_death_msg] run return run execute unless entity @s[tag=tf2.cause] as @a[tag=tf2.cause,predicate=!tf2:holding_melee] at @s run playsound tf2:ding.hit player @s ~ ~ ~ 0.8 1.2 0.05
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
tellraw @a[tag=tf2.current] ["",{"selector":"@p[tag=tf2.cause]","type":"selector"},{"text":" "},{"type":"nbt","source":"storage","nbt":"damages[-1].kill_verb","interpret":false,"storage":"tf2:lookup"},{"text":" "},{"selector":"@s","type":"selector"}]
execute unless entity @s[tag=tf2.cause] as @a[tag=tf2.cause,predicate=!tf2:holding_melee] at @s run playsound tf2:ding.kill player @s ~ ~ ~ 1.1 1 0.05
tag @a remove tf2.current
tag @s add tf2.said_death_msg