$execute unless entity @s[tag=tf2.visible] run return run tp @e[type=#tf2:player_like,dx=$(dx),dy=$(dy),dz=$(dz),scores={tf2.team=$(opp_team)}] $(direct_tp)
$tag @e[scores={tf2.team=$(opp_team)}] add tf2.enemy
$scoreboard players set $x tf2.var $(dx)
$scoreboard players set $y tf2.var $(dy)
$scoreboard players set $z tf2.var $(dz)
scoreboard players operation $horizontal tf2.var = $x tf2.var
scoreboard players operation $horizontal tf2.var > $z tf2.var
function tf2:draw_no_sign
$execute as @e[type=#tf2:player_like,dx=$(dx),dy=$(dy),dz=$(dz)] positioned as @s[scores={tf2.team=$(opp_team)}] run tp @s ^ ^ ^0.5
tag @a remove tf2.enemy