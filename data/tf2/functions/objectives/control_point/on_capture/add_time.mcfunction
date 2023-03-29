scoreboard players operation $temp tf2.increment = @s tf2.increment
execute as @e[type=marker,tag=tf2.in_use,tag=tf2.current] run scoreboard players operation @s tf2.timer += $temp tf2.increment
scoreboard players reset $temp tf2.increment