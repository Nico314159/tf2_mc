scoreboard players operation @s tf2.team = $team_temp tf2.var
scoreboard players add @s tf2.team 1
team join RED @s[scores={tf2.team=1}]
team join BLU @s[scores={tf2.team=2}]
execute store success score $team_temp tf2.var if score $team_temp tf2.var matches 0
function tf2:spawn/init