#> tf2:objectives/control_point/init
#
# @within tf2:tick

execute if score @s tf2.locked matches 0 run setblock ~ ~ ~ air
execute if score @s tf2.locked matches 1 run setblock ~ ~ ~ stone_slab
execute if score @s tf2.team matches 1 run setblock ~ ~-1 ~ red_stained_glass
execute if score @s tf2.team matches 2 run setblock ~ ~-1 ~ blue_stained_glass
