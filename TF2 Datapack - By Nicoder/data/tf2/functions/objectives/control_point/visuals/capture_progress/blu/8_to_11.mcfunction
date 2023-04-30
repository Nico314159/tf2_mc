#> tf2:objectives/control_point/visuals/capture_progress/blu/8_to_11
#
# @within tf2:objectives/control_point/visuals/capture_progress/blu/main

execute if score $frame tf2.var matches 8 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321e0e0e0e0e0d0c0|b0a0@)","color":"#517AB8"}]'
execute if score $frame tf2.var matches 9 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321e0e0e0e0e0e0|d0c0b0a0@","color":"#517AB8"}]'
execute if score $frame tf2.var matches 10 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321e0e0e0e0e0e0e0|d0c0b0a0!)","color":"#517AB8"}]'
execute if score $frame tf2.var matches 11 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321e0e0e0e0e0e0e0|e0d0c0b0a0!","color":"#517AB8"}]'