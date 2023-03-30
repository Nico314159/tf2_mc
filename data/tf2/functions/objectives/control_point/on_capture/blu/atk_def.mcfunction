#> tf2:objectives/control_point/on_capture/blu/atk_def
# 
# @within tf2:objectives/control_point/set_owner/blu
# @context marker & position

scoreboard players operation $temp tf2.index = @s tf2.index
scoreboard players add $temp tf2.index 1
tag @s add tf2.locked
setblock ~ ~ ~ stone_slab
execute as @e[type=marker,tag=tf2.current] if score @s tf2.index = $temp tf2.index run tag @s remove tf2.locked
execute as @e[type=marker,tag=tf2.current] if score @s tf2.index = $temp tf2.index at @s run setblock ~ ~ ~ air
# TODO: add support for map events (like doors opening)