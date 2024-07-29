$execute store result score @s tf2.max_timer store result score @s tf2.timer run data get storage tf2:running_games $(i).timer 20
function tf2:timer/set_max with storage tf2:index
function tf2:timer/show with storage tf2:index
tag @s remove tf2.setup_time
execute if data entity @s {data:{map:{name:"ad_test"}}} run fill -508 1 -517 -517 1 -508 minecraft:blue_carpet replace minecraft:cobblestone_wall
execute if data entity @s {data:{map:{name:"ad_gorge"}}} run function tf2:__private__/if_else/25