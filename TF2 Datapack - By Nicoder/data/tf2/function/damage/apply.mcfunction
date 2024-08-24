execute if score @s tf2.health matches ..0 run return fail
execute as @a[tag=tf2.is_playing] if score @s tf2.player.id = $cause tf2.var run tag @s add tf2.cause
scoreboard players operation @s tf2.health -= $amount tf2.var
damage @s 0.01 tf2:screenshake by @a[tag=tf2.cause,limit=1]
execute if score @s tf2.health matches 1.. run return run tag @a remove tf2.cause
execute if entity @s[tag=tf2.said_death_msg] run return run tag @a remove tf2.cause
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
tellraw @a[tag=tf2.current] ["",{"selector":"@p[tag=tf2.cause]","type":"selector"},{"text":" "},{"type":"nbt","source":"storage","nbt":"damages[-1].kill_verb","interpret":false,"storage":"tf2:lookup"},{"text":" "},{"selector":"@s","type":"selector"}]
tag @a remove tf2.current
tag @s add tf2.said_death_msg
tag @a remove tf2.cause