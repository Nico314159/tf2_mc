scoreboard players add @s tf2.permanent.games_played 1
execute if score @s tf2.team = $winner tf2.var run scoreboard players add @s tf2.permanent.games_won 1
tag @s remove tf2.current
scoreboard players remove @s xrroou1m8_p_join 1
kill @s[type=villager]