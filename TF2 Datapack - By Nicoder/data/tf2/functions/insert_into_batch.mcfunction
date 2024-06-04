$scoreboard players set @s tf2.batch_number $(batch)
$scoreboard players set @s tf2.team $(team)
team join RED @s[scores={tf2.team=1}]
team join BLU @s[scores={tf2.team=2}]
scoreboard players set @s tf2.max_health 100
function tf2:spawn/init
tag @s add tf2.is_playing