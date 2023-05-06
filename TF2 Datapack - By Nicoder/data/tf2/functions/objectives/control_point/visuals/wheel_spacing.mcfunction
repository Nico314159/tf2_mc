#> tf2:objectives/control_point/visuals/wheel_spacing
#
# @within tf2:objectives/control_point/visuals/capture_progress/*/wheel
tag @e remove tf2.current
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.control_point] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
scoreboard players operation $wheel_spacing tf2.var > @e[type=marker,tag=tf2.current] tf2.index
scoreboard players operation $wheel_spacing tf2.var /= 2 tf2.const
scoreboard players operation $wheel_spacing tf2.var -= @s tf2.index
execute if score $wheel_spacing tf2.var matches 30 run data modify storage tf2.__temp__:lookup points[0].wheel.spacing set value "6542"
execute if score $wheel_spacing tf2.var matches 25 run data modify storage tf2.__temp__:lookup points[0].wheel.spacing set value "65"
execute if score $wheel_spacing tf2.var matches 20 run data modify storage tf2.__temp__:lookup points[0].wheel.spacing set value "632"
execute if score $wheel_spacing tf2.var matches 15 run data modify storage tf2.__temp__:lookup points[0].wheel.spacing set value "543"
execute if score $wheel_spacing tf2.var matches 10 run data modify storage tf2.__temp__:lookup points[0].wheel.spacing set value "52"
execute if score $wheel_spacing tf2.var matches 5 run data modify storage tf2.__temp__:lookup points[0].wheel.spacing set value "41"
execute if score $wheel_spacing tf2.var matches 0 run data modify storage tf2.__temp__:lookup points[0].wheel.spacing set value "[\"\"]"
execute if score $wheel_spacing tf2.var matches -5 run data modify storage tf2.__temp__:lookup points[0].wheel.spacing set value "[{\"text\":\"$@\"}]"
execute if score $wheel_spacing tf2.var matches -10 run data modify storage tf2.__temp__:lookup points[0].wheel.spacing set value "[{\"text\":\"%#\"}]"
execute if score $wheel_spacing tf2.var matches -15 run data modify storage tf2.__temp__:lookup points[0].wheel.spacing set value "[{\"text\":\"%$#@\"}]"
execute if score $wheel_spacing tf2.var matches -20 run data modify storage tf2.__temp__:lookup points[0].wheel.spacing set value "[{\"text\":\"^$\"}]"
execute if score $wheel_spacing tf2.var matches -25 run data modify storage tf2.__temp__:lookup points[0].wheel.spacing set value "[{\"text\":\"^%@\"}]"
execute if score $wheel_spacing tf2.var matches -30 run data modify storage tf2.__temp__:lookup points[0].wheel.spacing set value "[{\"text\":\"^%$#\"}]"