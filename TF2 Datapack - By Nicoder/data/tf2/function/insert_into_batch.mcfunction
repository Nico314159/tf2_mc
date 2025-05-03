$scoreboard players set @s tf2.batch_number $(batch)
$scoreboard players set @s tf2.team $(team)
team join RED @s[scores={tf2.team=1}]
team join BLU @s[scores={tf2.team=2}]
clear @s
function tf2:test_items
function tf2:spawn/init
tag @s add tf2.is_playing
function tf2:timer/resync_visibility