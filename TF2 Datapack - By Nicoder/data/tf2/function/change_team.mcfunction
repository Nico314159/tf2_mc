scoreboard players operation @s tf2.team %= 2 tf2.const
scoreboard players add @s tf2.team 1
team join RED @s[scores={tf2.team=1}]
team join BLU @s[scores={tf2.team=2}]