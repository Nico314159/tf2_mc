scoreboard players remove @s tf2.health 4
damage @s 0.01 tf2:screenshake
particle minecraft:lava ~-0.05 ~1 ~-0.05 0.15 0.3 0.1 0 1 force @a[tag=!self]
execute if score @s tf2.health matches 1.. run return 1
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
data modify storage tf2:vars kill_verb set value 'burned to death'
tellraw @a[tag=tf2.current] ["",{"selector":"@s","type":"selector"},{"text":" "},{"type":"nbt","source":"storage","nbt":"kill_verb","interpret":false,"storage":"tf2:vars"}]
tag @a remove tf2.current
tag @s add tf2.said_death_msg