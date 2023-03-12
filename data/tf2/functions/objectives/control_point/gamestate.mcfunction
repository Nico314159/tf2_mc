#> tf2:objectives/control_point/gamestate
#
# @context marker
# @within tf2:tick

scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.control_point] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current

execute store result score $cp_count tf2.var if entity @e[type=marker,tag=tf2.control_point,tag=tf2.current]
execute store result score $red_cp_count tf2.var if entity @e[type=marker,tag=tf2.control_point,tag=tf2.current,scores={tf2.team=1}]
execute store result score $blu_cp_count tf2.var if entity @e[type=marker,tag=tf2.control_point,tag=tf2.current,scores={tf2.team=2}]

scoreboard players operation $neutral_cp_count tf2.var = $cp_count tf2.var
scoreboard players operation $neutral_cp_count tf2.var -= $red_cp_count tf2.var
scoreboard players operation $neutral_cp_count tf2.var -= $blu_cp_count tf2.var

tag @e[type=marker,tag=tf2.control_point,tag=tf2.current] remove tf2.current