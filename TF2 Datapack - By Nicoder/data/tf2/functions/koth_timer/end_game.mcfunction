execute if score @s tf2.red_timer matches 0 run scoreboard players set $winner tf2.var 1
execute if score @s tf2.blu_timer matches 0 run scoreboard players set $winner tf2.var 2
function tf2:reset/announce_winner
tag @s add tf2.ended
scoreboard players set @s tf2.timer -1