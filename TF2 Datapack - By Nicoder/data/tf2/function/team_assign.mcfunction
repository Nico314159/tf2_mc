scoreboard players operation @s tf2.team = $team_temp tf2.var
scoreboard players add @s tf2.team 1
team join RED @s[scores={tf2.team=1}]
team join BLU @s[scores={tf2.team=2}]
execute store success score $team_temp tf2.var if score $team_temp tf2.var matches 0
scoreboard players enable @s tf2.new_class
dialog show @s[scores={tf2.team=1}] tf2:red_class_menu
dialog show @s[scores={tf2.team=2}] tf2:blu_class_menu
tag @s add tf2.in_class_menu
function tf2:spawn/init