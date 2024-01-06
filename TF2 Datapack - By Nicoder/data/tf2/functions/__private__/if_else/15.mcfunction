execute if entity @s[gamemode=spectator] run return 0
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute if score $_isHeadshot_ tf2.var matches 1.. run tellraw @a[tag=tf2.current] ["",{"selector":"@a[tag=retina.executing]","type":"selector"},{"text":" headshot "},{"selector":"@s","type":"selector"},{"text":" with "},{"type":"nbt","source":"entity","nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@a[tag=retina.executing]"}]
execute unless score $_isHeadshot_ tf2.var matches 1.. run tellraw @a[tag=tf2.current] ["",{"selector":"@a[tag=retina.executing]","type":"selector"},{"text":" killed "},{"selector":"@s","type":"selector"},{"text":" with "},{"type":"nbt","source":"entity","nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@a[tag=retina.executing]"}]
tag @a remove tf2.current
tag @s add tf2.said_death_msg
playsound tf2:ding.kill player @a[tag=retina.executing,predicate=!tf2:holding_melee] ~ ~ ~ 0.9 1 0.05