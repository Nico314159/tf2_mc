tag @s add tf2.locked
scoreboard players operation @s[scores={tf2.team=1},distance=1..] tf2.red_progress = @s tf2.capture_threshold
scoreboard players operation @s[scores={tf2.team=2},distance=1..] tf2.blu_progress = @s tf2.capture_threshold
function tf2:objectives/control_point/find_index/main
data modify storage tf2.__temp__:lookup points[0].symbol set value '[{"text":"320L@","font":"tf2:square"}]'
function tf2:objectives/control_point/find_index/reinsert/main