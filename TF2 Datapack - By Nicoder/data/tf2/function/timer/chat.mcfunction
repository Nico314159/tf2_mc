scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
scoreboard players set __if_else__ tf2.var 0
execute if entity @s[tag=tf2.setup_time] run function tf2:__private__/if_else/35
execute if score __if_else__ tf2.var matches 0 if entity @s[tag=!tf2.overtime] run function tf2:__private__/if_else/36
execute store result score $temp tf2.var if predicate tf2:coin_flip
execute if score @s[tag=tf2.overtime] tf2.timer matches 1200 if score $temp tf2.var matches 1 run tellraw @a[tag=tf2.current] {"text":"Overtime!","bold":true,"color":"white","type":"text"}
execute if score @s[tag=tf2.overtime] tf2.timer matches 1200 unless score $temp tf2.var matches 1 run tellraw @a[tag=tf2.current] {"text":"Overtime...","bold":true,"color":"white","type":"text"}