execute if score @s tf2.team = $winner tf2.var run scoreboard players add @s tf2.permanent.games_won 1
scoreboard players add @s tf2.permanent.games_played 1
tag @s remove tf2.current
scoreboard players reset @s tf2.ticks
kill @s[type=villager]