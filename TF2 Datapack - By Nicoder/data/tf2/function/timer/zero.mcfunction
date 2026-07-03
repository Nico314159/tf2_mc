execute store result storage tf2:index i int 1 run scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=item_display,tag=tf2.control_point] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
tag @e[tag=tf2.current,tag=tf2.objective] remove tf2.overtime
execute as @e[type=item_display,tag=tf2.current,tag=tf2.objective] run function tf2:objectives/control_point/map_events/overtime_eligibility
execute if entity @e[type=item_display,tag=tf2.current,tag=tf2.overtime] run return run function tf2:timer/overtime with storage tf2:index
$bossbar set tf2:timer_$(i) color white
function tf2:timer/end_game