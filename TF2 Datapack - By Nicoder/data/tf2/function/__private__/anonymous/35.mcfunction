$execute as @e[type=#tf2:player_like,dx=$(dx),dy=$(dy),dz=$(dz)] unless score @s tf2.team matches $(opp_team) run tag @s add tf2.in_spawn
$tp @e[type=#tf2:player_like,dx=$(dx),dy=$(dy),dz=$(dz),scores={tf2.team=$(opp_team)}] $(direct_tp)