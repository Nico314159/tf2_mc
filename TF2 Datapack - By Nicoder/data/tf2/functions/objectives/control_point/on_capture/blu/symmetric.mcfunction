scoreboard players operation $temp tf2.index = @s tf2.index
scoreboard players add $temp tf2.index 10
execute as @e[type=marker,tag=tf2.current,scores={tf2.team=1}] if score @s tf2.index = $temp tf2.index at @s run function tf2:objectives/control_point/unlock
scoreboard players remove $temp tf2.index 20
execute unless score $last tf2.team matches 0 as @e[type=marker,tag=tf2.current,scores={tf2.team=2}] if score @s tf2.index = $temp tf2.index at @s run function tf2:objectives/control_point/lock