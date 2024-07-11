scoreboard players operation $temp tf2.index = @s tf2.index
scoreboard players add $temp tf2.index 10
execute at @s run function tf2:objectives/control_point/lock
execute as @e[type=item_display,tag=tf2.control_point,tag=tf2.current] if score @s tf2.index = $temp tf2.index at @s run function tf2:objectives/control_point/unlock