tag @s add tf2.setup_time
$execute store result score @s tf2.max_timer store result score @s tf2.timer run data get storage tf2:running_games $(i).setup_time 20
$bossbar set tf2:timer_$(i) color green
function tf2:timer/set_max with storage tf2:index
execute if data entity @s {data:{map:{name:"ad_test"}}} run fill -508 1 -517 -517 1 -508 minecraft:cobblestone_wall replace minecraft:blue_carpet
execute if data entity @s {data:{map:{name:"ad_gorge"}}} run function tf2:__private__/if_else/32