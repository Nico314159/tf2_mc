data modify storage tf2:lookup damages append value {instakill:true,cause:-2147483648,kill_verb:"fell into the void"}
execute store result storage tf2:lookup damages[-1].target int 1 run scoreboard players get @s tf2.player_id
tp @s ~ 5 ~