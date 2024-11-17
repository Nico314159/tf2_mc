scoreboard players add @s tf2.drown_lost 5
data modify storage tf2:lookup damages append value {amount:5,cause:-2147483648,kill_verb:"drowned"}
execute store result storage tf2:lookup damages[-1].target int 1 run scoreboard players get @s tf2.player_id