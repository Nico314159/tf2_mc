#> tf2:objectives/control_point/visuals/capture_progress/red/8_to_11
#
# @within tf2:objectives/control_point/visuals/capture_progress/red/main

execute if score $frame tf2.var matches 8 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321@|a0b0c0d0e0e0e0e0e0)","color":"#D95A58"}]'
execute if score $frame tf2.var matches 9 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321!)|a0b0c0d0e0e0e0e0e0e0)","color":"#D95A58"}]'
execute if score $frame tf2.var matches 10 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321!|a0b0c0d0e0e0e0e0e0e0e0)","color":"#D95A58"}]'
execute if score $frame tf2.var matches 11 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321)|a0b0c0d0e0e0e0e0e0e0e0e0)","color":"#D95A58"}]'