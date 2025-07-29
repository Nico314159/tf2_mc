scoreboard players operation $last tf2.team = @s tf2.team
scoreboard players set @s tf2.team 1
scoreboard players operation @s tf2.red_progress = @s tf2.capture_threshold
function tf2:objectives/control_point/find_index/main
data modify storage tf2:lookup points[0].owner set value [{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#D95A58"}]
data modify storage tf2:lookup points[0].progress set value [{"text":"321))))))))))))))","color":"gray"}]
function tf2:objectives/control_point/find_index/reinsert
tag @s remove tf2.said_dialogue
item modify entity @s contents {"function":"minecraft:set_custom_model_data","floats":{"values":[1],"mode":"replace_all"}}
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
tag @e[type=marker,tag=tf2.current] remove tf2.current
execute as @e[type=marker] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
tag @e[type=item_display,tag=tf2.current] remove tf2.current
execute as @e[type=item_display] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute if score $last tf2.team = @s tf2.team run return 0
data modify storage tf2:index team set value 'red'
function tf2:objectives/control_point/map_events/handle with storage tf2:index
execute if entity @s[tag=tf2.overtime] run function tf2:objectives/control_point/cancel_overtime
execute if score @s[tag=!tf2.multistage] tf2.gamemode matches 2 run function tf2:objectives/control_point/on_capture/red/symmetric
execute if score @s tf2.gamemode matches 3 run function tf2:objectives/control_point/on_capture/red/koth
execute if score @s tf2.increment matches 1.. run function tf2:objectives/control_point/on_capture/add_time