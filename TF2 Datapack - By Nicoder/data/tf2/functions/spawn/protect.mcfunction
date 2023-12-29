$execute unless entity @s[tag=tf2.visible] run return run tp @e[type=#tf2:player_like,dx=$(dx),dy=$(dy),dz=$(dz),scores={tf2.team=$(opp_team)}] $(direct_tp)
function tf2:noentrysign/draw
$execute as @e[type=#tf2:player_like,dx=$(dx),dy=$(dy),dz=$(dz)] positioned as @s[scores={tf2.team=$(opp_team)}] run tp @s ^ ^ ^0.5
tag @a remove tf2.enemy