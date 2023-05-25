scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute if score @s[tag=tf2.setup_time] tf2.timer matches 1200 run tellraw @a[tag=tf2.current] {"text":"Mission begins in sixty seconds.","bold":true,"color":"white"}
execute if score @s[tag=tf2.setup_time] tf2.timer matches 600 run tellraw @a[tag=tf2.current] {"text":"Mission begins in thirty seconds.","bold":true,"color":"white"}
execute if score @s[tag=tf2.setup_time] tf2.timer matches 200 run tellraw @a[tag=tf2.current] {"text":"Mission begins in ten seconds.","bold":true,"color":"white"}
execute if score @s[tag=tf2.setup_time] tf2.timer matches 100 run tellraw @a[tag=tf2.current] {"text":"Five...","bold":true,"color":"white"}
execute if score @s[tag=tf2.setup_time] tf2.timer matches 80 run tellraw @a[tag=tf2.current] {"text":"Four..","bold":true,"color":"white"}
execute if score @s[tag=tf2.setup_time] tf2.timer matches 60 run tellraw @a[tag=tf2.current] {"text":"Three..","bold":true,"color":"white"}
execute if score @s[tag=tf2.setup_time] tf2.timer matches 40 run tellraw @a[tag=tf2.current] {"text":"Two..","bold":true,"color":"white"}
execute if score @s[tag=tf2.setup_time] tf2.timer matches 20 run tellraw @a[tag=tf2.current] {"text":"One.","bold":true,"italic":true,"color":"white"}
execute if score @s[tag=!tf2.overtime,tag=!tf2.setup_time] tf2.timer matches 1200 run tellraw @a[tag=tf2.current] {"text":"Mission ends in sixty seconds.","bold":true,"color":"white"}
execute if score @s[tag=!tf2.overtime,tag=!tf2.setup_time] tf2.timer matches 600 run tellraw @a[tag=tf2.current] {"text":"Mission ends in thirty seconds.","bold":true,"color":"white"}
execute if score @s[tag=!tf2.overtime,tag=!tf2.setup_time] tf2.timer matches 200 run tellraw @a[tag=tf2.current] {"text":"Mission ends in ten seconds.","bold":true,"color":"white"}
execute if score @s[tag=!tf2.overtime,tag=!tf2.setup_time] tf2.timer matches 100 run tellraw @a[tag=tf2.current] {"text":"Five!","bold":true,"color":"white"}
execute if score @s[tag=!tf2.overtime,tag=!tf2.setup_time] tf2.timer matches 80 run tellraw @a[tag=tf2.current] {"text":"Four!","bold":true,"color":"white"}
execute if score @s[tag=!tf2.overtime,tag=!tf2.setup_time] tf2.timer matches 60 run tellraw @a[tag=tf2.current] {"text":"Three!","bold":true,"color":"white"}
execute if score @s[tag=!tf2.overtime,tag=!tf2.setup_time] tf2.timer matches 40 run tellraw @a[tag=tf2.current] {"text":"Two!","bold":true,"color":"white"}
execute if score @s[tag=!tf2.overtime,tag=!tf2.setup_time] tf2.timer matches 20 run tellraw @a[tag=tf2.current] {"text":"One!","bold":true,"italic":true,"color":"white"}
execute store result score $temp tf2.var if predicate tf2:coin_flip
execute if score @s[tag=tf2.overtime] tf2.timer matches 1200 if score $temp tf2.var matches 1 run tellraw @a[tag=tf2.current] {"text":"Overtime!","bold":true,"color":"white"}
execute if score @s[tag=tf2.overtime] tf2.timer matches 1200 unless score $temp tf2.var matches 1 run tellraw @a[tag=tf2.current] {"text":"Overtime...","bold":true,"color":"white"}