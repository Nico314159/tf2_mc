$tag @e[scores={tf2.team=$(opp_team)}] add tf2.enemy
$scoreboard players set $x tf2.var $(dx)
$scoreboard players set $y tf2.var $(dy)
$scoreboard players set $z tf2.var $(dz)
execute if score $x tf2.var matches 0 run function tf2:__private__/if_else/42
execute if score $y tf2.var matches 0 run function tf2:__private__/if_else/43
execute if score $z tf2.var matches 0 run function tf2:__private__/if_else/44
$execute as @e[type=#tf2:player_like,dx=$(dx),dy=$(dy),dz=$(dz)] positioned as @s[tag=tf2.enemy] run tp @s ^ ^ ^0.5
tag @a remove tf2.enemy