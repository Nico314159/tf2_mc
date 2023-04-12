scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
function tf2:objectives/control_point/find_index/main
execute if score $frame tf2.var matches 0 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321a0#@)","color":"blue"}]'
execute if score $frame tf2.var matches 1 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321b0a0#@","color":"blue"}]'
execute if score $frame tf2.var matches 2 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321c0b0a0#!)","color":"blue"}]'
execute if score $frame tf2.var matches 3 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321d0c0b0a0#!","color":"blue"}]'
function tf2:objectives/control_point/find_index/reinsert/main