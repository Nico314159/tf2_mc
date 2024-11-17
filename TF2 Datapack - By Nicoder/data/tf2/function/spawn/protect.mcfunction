execute unless entity @s[tag=tf2.visible] run return run function tf2:__private__/anonymous/36 with entity @s data
scoreboard players remove @s tf2.draw_delay 1
execute if score @s tf2.draw_delay matches ..0 run function tf2:noentrysign/draw
$execute as @e[type=#tf2:player_like,dx=$(dx),dy=$(dy),dz=$(dz)] positioned as @s[scores={tf2.team=$(opp_team)}] run tp @s ^ ^ ^0.5