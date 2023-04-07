#> tf2:timer/show
#
# @within tf2:start_game/as_marker/main

execute if score @s tf2.batch_number matches 1 run bossbar set tf2:timer_1 visible true
execute if score @s tf2.batch_number matches 2 run bossbar set tf2:timer_2 visible true
execute if score @s tf2.batch_number matches 3 run bossbar set tf2:timer_3 visible true
execute if score @s tf2.batch_number matches 4 run bossbar set tf2:timer_4 visible true
execute if score @s tf2.batch_number matches 5 run bossbar set tf2:timer_5 visible true

execute if score @s tf2.batch_number matches 1 run bossbar set tf2:timer_1 players @a[scores={tf2.batch_number=1}]
execute if score @s tf2.batch_number matches 2 run bossbar set tf2:timer_2 players @a[scores={tf2.batch_number=2}]
execute if score @s tf2.batch_number matches 3 run bossbar set tf2:timer_3 players @a[scores={tf2.batch_number=3}]
execute if score @s tf2.batch_number matches 4 run bossbar set tf2:timer_4 players @a[scores={tf2.batch_number=4}]
execute if score @s tf2.batch_number matches 5 run bossbar set tf2:timer_5 players @a[scores={tf2.batch_number=5}]

execute if score @s tf2.batch_number matches 1 run bossbar set tf2:timer_1 color white
execute if score @s tf2.batch_number matches 2 run bossbar set tf2:timer_2 color white
execute if score @s tf2.batch_number matches 3 run bossbar set tf2:timer_3 color white
execute if score @s tf2.batch_number matches 4 run bossbar set tf2:timer_4 color white
execute if score @s tf2.batch_number matches 5 run bossbar set tf2:timer_5 color white