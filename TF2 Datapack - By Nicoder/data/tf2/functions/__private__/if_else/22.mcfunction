execute store result score @s tf2.max_timer store result score @s tf2.timer run data get entity @s data.map.timer 20
execute if data entity @s data.map.timer run function tf2:timer/set_max with storage tf2:index
execute if data entity @s data.map.timer run function tf2:timer/show with storage tf2:index
execute if data entity @s data.map.setup_time run function tf2:timer/begin_setup with storage tf2:index