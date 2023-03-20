#> tf2:timer/hide
#
# @within tf2:reset/as_marker

execute if score @s tf2.batch_number matches 1 run bossbar set tf2:timer_1 visible false
execute if score @s tf2.batch_number matches 2 run bossbar set tf2:timer_2 visible false
execute if score @s tf2.batch_number matches 3 run bossbar set tf2:timer_3 visible false
execute if score @s tf2.batch_number matches 4 run bossbar set tf2:timer_4 visible false
execute if score @s tf2.batch_number matches 5 run bossbar set tf2:timer_5 visible false
