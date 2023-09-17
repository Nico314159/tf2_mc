tag @s add tf2.setup_time
execute store result score @s tf2.timer run data get entity @s data.map.setup_time 20
$bossbar set tf2:timer_$(i) color green
function tf2:timer/set_max with storage tf2.__temp__:index
execute if data entity @s {data:{map:{name: "ad_test"}}} run fill -508 1 -517 -517 1 -508 minecraft:cobblestone_wall replace minecraft:blue_carpet