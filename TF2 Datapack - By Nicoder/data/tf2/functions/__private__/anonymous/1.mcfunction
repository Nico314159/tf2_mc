scoreboard players set @s tf2.map 1
scoreboard players operation @s tf2.batch_number > @e[type=marker,tag=tf2.batch] tf2.batch_number
scoreboard players add @s tf2.batch_number 1
scoreboard players operation @s[scores={tf2.batch_number=1}] tf2.session = $global_1 tf2.session
scoreboard players operation @s[scores={tf2.batch_number=2}] tf2.session = $global_2 tf2.session
scoreboard players operation @s[scores={tf2.batch_number=3}] tf2.session = $global_3 tf2.session
scoreboard players operation @s[scores={tf2.batch_number=4}] tf2.session = $global_4 tf2.session
scoreboard players operation @s[scores={tf2.batch_number=5}] tf2.session = $global_5 tf2.session