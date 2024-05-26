$execute store result score @s tf2.batch_number run $(batch)
$execute store result score @s tf2.team run $(team)
team join RED @s[scores={tf2.team=1}]
team join BLU @s[scores={tf2.team=2}]
scoreboard players set @s tf2.health 0
tag @s add tf2.is_playing