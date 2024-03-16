tag @s add tf2.locked
scoreboard players operation @s[scores={tf2.team=1}] tf2.red_progress = @s tf2.capture_threshold
scoreboard players set @s[scores={tf2.team=1}] tf2.blu_progress 0
scoreboard players set @s[scores={tf2.team=2}] tf2.red_progress 0
scoreboard players operation @s[scores={tf2.team=2}] tf2.blu_progress = @s tf2.capture_threshold
function tf2:objectives/control_point/find_index/main
execute if score @s tf2.team matches 1 run data modify storage tf2:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#D95A58"}]'
execute if score @s tf2.team matches 2 run data modify storage tf2:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#517AB8"}]'
data modify storage tf2:lookup points[0].progress set value '[{"text":"321))))))))))))))","color":"gray"}]'
data modify storage tf2:lookup points[0].symbol set value '[{"text":"320L@","font":"tf2:square"}]'
function tf2:objectives/control_point/find_index/reinsert
setblock ~ ~ ~ stone_slab