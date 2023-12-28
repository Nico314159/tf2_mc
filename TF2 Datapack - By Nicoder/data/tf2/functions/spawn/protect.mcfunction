$execute unless entity @s[tag=tf2.visible] run return run tp @e[type=#tf2:player_like,dx=$(dx),dy=$(dy),dz=$(dz),scores={tf2.team=$(opp_team)}] $(direct_tp)
$tag @e[scores={tf2.team=$(opp_team)}] add tf2.enemy
$scoreboard players set $x tf2.var $(dx)
$scoreboard players set $y tf2.var $(dy)
$scoreboard players set $z tf2.var $(dz)
scoreboard players set $drawn_particles tf2.var 0
execute if score $x tf2.var matches 0 if score $y tf2.var matches 3.. if score $z tf2.var matches 3.. run function tf2:__private__/if_else/42
execute if score $x tf2.var matches 3.. if score $y tf2.var matches 0 if score $z tf2.var matches 3.. run function tf2:__private__/if_else/43
execute if score $x tf2.var matches 3.. if score $y tf2.var matches 3.. if score $z tf2.var matches 0 run function tf2:__private__/if_else/44
execute unless score $drawn_particles tf2.var matches 1.. run function tf2:__private__/if_else/45
$execute as @e[type=#tf2:player_like,dx=$(dx),dy=$(dy),dz=$(dz)] positioned as @s[scores={tf2.team=$(opp_team)}] run tp @s ^ ^ ^0.5
tag @a remove tf2.enemy