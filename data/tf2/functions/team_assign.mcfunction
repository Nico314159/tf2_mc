#> tf2:team_assign
#
# @within tf2:start_game/as_marker

scoreboard players operation @s tf2.team = $team_temp tf2.var
scoreboard players add @s tf2.team 1
execute if score @s tf2.team matches 1 run team join RED
execute if score @s tf2.team matches 2 run team join BLU
execute store success score $team_temp tf2.var if score $team_temp tf2.var matches 0
function tf2:spawn/init