#> tf2:timer/chat
#
# @within tf2:timer/main

scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute if score @s tf2.timer matches 1200 run tellraw @a[tag=tf2.current] {"text":"Mission ends in sixty seconds.","bold":true,"color":"white"}
execute if score @s tf2.timer matches 600 run tellraw @a[tag=tf2.current] {"text":"Mission ends in thirty seconds.","bold":true,"color":"white"}
execute if score @s tf2.timer matches 200 run tellraw @a[tag=tf2.current] {"text":"Mission ends in ten seconds.","bold":true,"color":"white"}
execute if score @s tf2.timer matches 100 run tellraw @a[tag=tf2.current] {"text":"Five!","bold":true,"color":"white"}
execute if score @s tf2.timer matches 80 run tellraw @a[tag=tf2.current] {"text":"Four!","bold":true,"color":"white"}
execute if score @s tf2.timer matches 60 run tellraw @a[tag=tf2.current] {"text":"Three!","bold":true,"color":"white"}
execute if score @s tf2.timer matches 40 run tellraw @a[tag=tf2.current] {"text":"Two!","bold":true,"color":"white"}
execute if score @s tf2.timer matches 20 run tellraw @a[tag=tf2.current] {"text":"One!","bold":true,"italic":true,"color":"white"}
