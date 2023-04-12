scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
function tf2:objectives/control_point/find_index/main
execute if score $frame tf2.var matches 8 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321@|a0b0c0d0e0e0e0e0e0)","color":"red"}]'
execute if score $frame tf2.var matches 9 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321!)|a0b0c0d0e0e0e0e0e0e0)","color":"red"}]'
execute if score $frame tf2.var matches 10 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321!|a0b0c0d0e0e0e0e0e0e0e0)","color":"red"}]'
execute if score $frame tf2.var matches 11 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321)|a0b0c0d0e0e0e0e0e0e0e0e0)","color":"red"}]'
function tf2:objectives/control_point/find_index/reinsert/main