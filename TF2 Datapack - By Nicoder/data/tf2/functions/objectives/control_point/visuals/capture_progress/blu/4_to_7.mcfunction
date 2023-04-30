#> tf2:objectives/control_point/visuals/capture_progress/blu/4_to_7
#
# @within tf2:objectives/control_point/visuals/capture_progress/blu/main

execute if score $frame tf2.var matches 4 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321e0d0c0b0a0#)","color":"#517AB8"}]'
execute if score $frame tf2.var matches 5 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321e0e0d0c0b0a0#","color":"#517AB8"}]'
execute if score $frame tf2.var matches 6 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321e0e0e0d0c0b0a0@!)","color":"#517AB8"}]'
execute if score $frame tf2.var matches 7 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321e0e0e0e0d0c0|b0a0@!","color":"#517AB8"}]'