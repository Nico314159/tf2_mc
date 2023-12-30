execute if entity @s[tag=tf2.in_use] unless score @s tf2.gamemode matches 3 run function tf2:timer/main
execute if entity @s[tag=tf2.in_use,scores={tf2.gamemode=3}] run function tf2:koth_timer/main
execute if entity @s[tag=tf2.in_use,scores={tf2.gamemode=1..4}] if entity @a run function tf2:objectives/control_point/gamestate
execute if entity @s[tag=tf2.control_point,tag=!tf2.init] at @s run function tf2:objectives/control_point/visuals/init
execute if entity @s[tag=tf2.control_point,tag=!tf2.locked] at @s run function tf2:objectives/control_point/check_for_players
execute if entity @s[tag=tf2.batch] run function tf2:__private__/anonymous/19
execute if entity @s[tag=tf2.spawn_door] at @s run function tf2:spawn/protect with entity @s data