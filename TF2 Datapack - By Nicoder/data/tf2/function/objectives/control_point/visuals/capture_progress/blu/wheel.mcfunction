scoreboard players operation $wheel_frame tf2.var *= 3 tf2.const
scoreboard players operation $wheel_frame tf2.var /= @s tf2.capture_threshold
function tf2:objectives/control_point/visuals/wheel_spacing
execute if score @s tf2.team matches 0 run data modify storage tf2:lookup points[0].wheel.owner set value [{"text":"=","color":"#A1A1A1"}]
execute if score @s tf2.team matches 1 run data modify storage tf2:lookup points[0].wheel.owner set value [{"text":"=","color":"#D95A58"}]
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get $wheel_frame tf2.var
function tf2:__private__/switch_case/14/select with storage tf2:__storage__
title @a[tag=tf2.on_point] times 0 4 5
data modify storage tf2:lookup points[0].wheel.owner prepend value [{"text":"?43","color":"#291A15","shadow_color":0}]
data modify storage tf2:lookup points[0].wheel.owner[1] merge value {"shadow_color":0}
data modify storage tf2:lookup points[0].wheel.progress[0] merge value {"shadow_color":0}
execute if score @s tf2.gamemode matches 3 run return run title @a[tag=tf2.on_point] title ["",{"font":"tf2:wheel_koth","type":"nbt","source":"storage","nbt":"points[0].wheel.spacing","interpret":true,"storage":"tf2:lookup"},{"font":"tf2:wheel_koth","type":"nbt","source":"storage","nbt":"points[0].wheel.owner","interpret":true,"storage":"tf2:lookup"},{"text":"421|","font":"tf2:wheel_koth","type":"text"},{"font":"tf2:wheel_koth","type":"nbt","source":"storage","nbt":"points[0].wheel.progress","interpret":true,"storage":"tf2:lookup"}]
title @a[tag=tf2.on_point] title ["",{"font":"tf2:wheel","type":"nbt","source":"storage","nbt":"points[0].wheel.spacing","interpret":true,"storage":"tf2:lookup"},{"font":"tf2:wheel","type":"nbt","source":"storage","nbt":"points[0].wheel.owner","interpret":true,"storage":"tf2:lookup"},{"text":"421|","font":"tf2:wheel","type":"text"},{"font":"tf2:wheel","type":"nbt","source":"storage","nbt":"points[0].wheel.progress","interpret":true,"storage":"tf2:lookup"}]