#TODO add compatibility for comp team sizes smaller than 9v9 (4v4, 6v6, and 7v7 in particular)
scoreboard players set $highest_batch_num tf2.var -2147483648
scoreboard players operation $highest_batch_num tf2.var > * tf2.batch_number
scoreboard players add $highest_batch_num tf2.var 1
execute as @e[type=#tf2:player_like,tag=tf2.waiting_room,scores={tf2.selected_mode=1,tf2.batch_number=0},limit=18,sort=random] run scoreboard players operation @s tf2.batch_number = $highest_batch_num tf2.var