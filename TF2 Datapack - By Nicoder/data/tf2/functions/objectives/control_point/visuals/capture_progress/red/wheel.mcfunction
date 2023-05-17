#> tf2:objectives/control_point/visuals/capture_progress/red/wheel
#
# @within tf2:objectives/control_point/visuals/capture_progress/red/main
# @writes
#   score $wheel_frame tf2.var
#       Frame of the title animation to display. Ranges from 0 - 47 based on how much capture progress has been made.
#   storage tf2.__temp__:lookup points[0].wheel.owner
#       Team-color background circle to show who controls the point.
#   storage tf2.__temp__:lookup points[0].wheel.progress
#       Team-color wedge sector to show the amount of progress. (duh!)
# @reads
#   score @s tf2.team
#       Which team owns the control point. Determines color of the background circle (unowned = #A1A1A1, BLU-owned = #517AB8).
scoreboard players operation $wheel_frame tf2.var *= 3 tf2.const
scoreboard players operation $wheel_frame tf2.var /= @s tf2.capture_threshold
function tf2:objectives/control_point/visuals/wheel_spacing
execute if score @s tf2.team matches 0 run data modify storage tf2.__temp__:lookup points[0].wheel.owner set value "[{\"text\":\"=\",\"color\":\"#A1A1A1\"}]"
execute if score @s tf2.team matches 2 run data modify storage tf2.__temp__:lookup points[0].wheel.owner set value "[{\"text\":\"=\",\"color\":\"#517AB8\"}]"
function tf2:__private__/switch_case/56
title @a[tag=tf2.on_point] times 0 4 5
title @a[tag=tf2.on_point] title [{"nbt":"points[0].wheel.spacing","storage":"tf2.__temp__:lookup","interpret":true,"font":"tf2:wheel"},{"text":"?43","color":"#291A15","font":"tf2:wheel"},{"nbt":"points[0].wheel.owner","storage":"tf2.__temp__:lookup","interpret":true,"font":"tf2:wheel"},{"text":"421|","font":"tf2:wheel"},{"nbt":"points[0].wheel.progress","storage":"tf2.__temp__:lookup","interpret":true,"font":"tf2:wheel"}]