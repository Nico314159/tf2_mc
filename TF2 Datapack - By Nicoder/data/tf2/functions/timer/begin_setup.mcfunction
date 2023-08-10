tag @s add tf2.setup_time
execute store result score @s tf2.timer run data get entity @s data.map.setup_time 20
execute if score @s tf2.batch_number matches 1 run bossbar set tf2:timer_1 color green
execute if score @s tf2.batch_number matches 2 run bossbar set tf2:timer_2 color green
execute if score @s tf2.batch_number matches 3 run bossbar set tf2:timer_3 color green
execute if score @s tf2.batch_number matches 4 run bossbar set tf2:timer_4 color green
execute if score @s tf2.batch_number matches 5 run bossbar set tf2:timer_5 color green
function tf2:timer/set_max
execute if data entity @s {data:{map:{name: "ad_test"}}} run fill -508 1 -517 -517 1 -508 minecraft:cobblestone_wall replace minecraft:blue_carpet