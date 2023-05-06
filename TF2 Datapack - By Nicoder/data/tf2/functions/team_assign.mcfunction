#> tf2:team_assign
#
# @within tf2:start_game/as_marker/main
# @context all players in the batch
# @input
#   score $team_temp tf2.var
#       Alternates team of the next player in loop (without using randomization)
# @output
#   score @s tf2.team 
#       Which team the player will be assigned to (1 = RED, 2 = BLU)
scoreboard players operation @s tf2.team = $team_temp tf2.var
scoreboard players add @s tf2.team 1
team join RED @s[scores={tf2.team=1}]
team join BLU @s[scores={tf2.team=2}]
execute store success score $team_temp tf2.var if score $team_temp tf2.var matches 0
function tf2:spawn/init