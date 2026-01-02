$scoreboard players set @s tf2.batch_number $(batch)
$scoreboard players set @s tf2.team $(team)
team join RED @s[scores={tf2.team=1}]
team join BLU @s[scores={tf2.team=2}]
clear @s
scoreboard players enable @s tf2.new_class
dialog show @s[scores={tf2.team=1}] tf2:red_class_menu
dialog show @s[scores={tf2.team=2}] tf2:blu_class_menu
tag @s add tf2.in_class_menu
function tf2:spawn/init
tag @s add tf2.is_playing
function tf2:timer/resync_visibility