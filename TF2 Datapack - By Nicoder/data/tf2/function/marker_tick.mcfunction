execute if entity @s[tag=tf2.in_use,scores={tf2.gamemode=1..4}] if entity @a run function tf2:objectives/control_point/gamestate
execute if entity @s[tag=tf2.in_use] run function tf2:timer/main
execute if entity @s[tag=tf2.batch] run function tf2:__private__/anonymous/33
execute at @s[tag=tf2.spawn_door] run function tf2:spawn/protect with entity @s data