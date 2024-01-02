scoreboard objectives add tf2.var dummy
scoreboard objectives add on_event_1mqyp2x used:carrot_on_a_stick
scoreboard objectives add 0008it54g_p_join dummy
scoreboard objectives add tf2.const dummy
scoreboard players set 1024 tf2.const 1024
scoreboard players set 1048576 tf2.const 1048576
scoreboard players set 2 tf2.const 2
scoreboard players set 3 tf2.const 3
scoreboard players set 900 tf2.const 900
scoreboard players set 5 tf2.const 5
scoreboard players set 6 tf2.const 6
scoreboard players set 0 tf2.const 0
scoreboard players set 4 tf2.const 4
scoreboard players set 1800 tf2.const 1800
scoreboard players set 10 tf2.const 10
scoreboard players set 8 tf2.const 8
scoreboard players set 13 tf2.const 13
scoreboard players set 10000 tf2.const 10000
scoreboard players set 20 tf2.const 20
scoreboard players set 1050 tf2.const 1050
scoreboard players set -100 tf2.const -100
scoreboard players set 1570 tf2.const 1570
scoreboard players set 300 tf2.const 300
scoreboard players set 60 tf2.const 60
scoreboard players set 66 tf2.const 66
scoreboard players set 5833 tf2.const 5833
scoreboard players set 85 tf2.const 85
scoreboard players set 100 tf2.const 100
scoreboard players set 1000 tf2.const 1000
scoreboard players set -1 tf2.const -1
scoreboard objectives add tf2.gamemode dummy
scoreboard objectives add tf2.map dummy
scoreboard objectives add tf2.index dummy
scoreboard objectives add tf2.red_progress dummy
scoreboard objectives add tf2.blu_progress dummy
scoreboard objectives add tf2.capture_threshold dummy
scoreboard objectives add tf2.timer dummy
scoreboard objectives add tf2.timer.min dummy
scoreboard objectives add tf2.timer.sec dummy
scoreboard objectives add tf2.increment dummy
scoreboard objectives add tf2.red_timer dummy
scoreboard objectives add tf2.red_timer.min dummy
scoreboard objectives add tf2.red_timer.sec dummy
scoreboard objectives add tf2.red_overtime dummy
scoreboard objectives add tf2.blu_timer dummy
scoreboard objectives add tf2.blu_timer.min dummy
scoreboard objectives add tf2.blu_timer.sec dummy
scoreboard objectives add tf2.blu_overtime dummy
scoreboard objectives add tf2.batch_number dummy
scoreboard objectives add tf2.session dummy
scoreboard objectives add tf2.lifetime dummy
scoreboard objectives add tf2.draw_delay dummy
scoreboard objectives add tf2.size dummy
scoreboard objectives add tf2.rotation dummy
scoreboard objectives add tf2.respawn_timer dummy
scoreboard objectives add tf2.respawn_timer.sec dummy
scoreboard objectives add tf2.class dummy
scoreboard objectives add tf2.team dummy
scoreboard objectives add tf2.health dummy
scoreboard objectives add tf2.max_health dummy
scoreboard objectives add tf2.time_scoped dummy
scoreboard objectives add tf2.grace_period dummy
scoreboard objectives add tf2.last_slot dummy
scoreboard objectives add tf2.current_slot dummy
scoreboard objectives add tf2.primary_clip dummy
scoreboard objectives add tf2.primary_maxClip dummy
scoreboard objectives add tf2.primary_ammo dummy
scoreboard objectives add tf2.primary_maxAmmo dummy
scoreboard objectives add tf2.secondary_clip dummy
scoreboard objectives add tf2.secondary_maxClip dummy
scoreboard objectives add tf2.secondary_ammo dummy
scoreboard objectives add tf2.secondary_maxAmmo dummy
scoreboard objectives add tf2.attack_delay dummy
scoreboard objectives add tf2.reload_delay dummy
scoreboard objectives add tf2.consecutive_reload dummy
scoreboard objectives add tf2.time_revved dummy
scoreboard objectives add tf2.rev_threshold dummy
scoreboard objectives add tf2.permanent.games_won dummy
scoreboard objectives add tf2.permanent.games_played dummy
scoreboard objectives add tf2.permanent.double_jumps dummy
scoreboard objectives add tf2.fall_y dummy
scoreboard objectives add tf2.fall_y1 dummy
scoreboard objectives add tf2.fall_y2 dummy
scoreboard objectives add tf2.fall_y3 dummy
scoreboard objectives add tf2.drown_lost dummy
scoreboard objectives add tf2.time_surfaced dummy
scoreboard objectives add tf2.current_air dummy
scoreboard objectives add tf2.last_air dummy
scoreboard objectives add tf2.queue_type trigger
scoreboard objectives add tf2.elytra_detect custom:aviate_one_cm
scoreboard objectives add tf2.fall custom:fall_one_cm
scoreboard objectives add tf2.air air
team add RED "RED"
team modify RED color red
team modify RED prefix "[RED] "
team modify RED friendlyFire false
team add BLU "BLU"
team modify BLU color blue
team modify BLU prefix "[BLU] "
team modify BLU friendlyFire false
bossbar add tf2:timer_1 ""
bossbar add tf2:red_timer_1 ""
bossbar set tf2:red_timer_1 color red
bossbar add tf2:blu_timer_1 ""
bossbar set tf2:blu_timer_1 color blue
bossbar add tf2:timer_2 ""
bossbar add tf2:red_timer_2 ""
bossbar set tf2:red_timer_2 color red
bossbar add tf2:blu_timer_2 ""
bossbar set tf2:blu_timer_2 color blue
bossbar add tf2:timer_3 ""
bossbar add tf2:red_timer_3 ""
bossbar set tf2:red_timer_3 color red
bossbar add tf2:blu_timer_3 ""
bossbar set tf2:blu_timer_3 color blue
bossbar add tf2:timer_4 ""
bossbar add tf2:red_timer_4 ""
bossbar set tf2:red_timer_4 color red
bossbar add tf2:blu_timer_4 ""
bossbar set tf2:blu_timer_4 color blue
bossbar add tf2:timer_5 ""
bossbar add tf2:red_timer_5 ""
bossbar set tf2:red_timer_5 color red
bossbar add tf2:blu_timer_5 ""
bossbar set tf2:blu_timer_5 color blue
execute store success score $found_dependency tf2.var run function retina:__load__
execute unless score $found_dependency tf2.var matches 1.. run return run tellraw @a ["",{"text":"[ERROR] ","color":"dark_red","type":"text"},{"text":"Dependency ","color":"red","type":"text"},{"text":"Retina 2","color":"aqua","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/Nico314159/Retina_v2"},"hoverEvent":{"action":"show_text","contents":"https://github.com/Nico314159/Retina_v2"},"type":"text"},{"text":" was not found.","color":"red","type":"text"}]
execute store success score $found_dependency tf2.var run function delta:internal/technical/load
execute unless score $found_dependency tf2.var matches 1.. run return run tellraw @a ["",{"text":"[ERROR] ","color":"dark_red","type":"text"},{"text":"Dependency ","color":"red","type":"text"},{"text":"Delta","color":"aqua","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/BigPapi13/Delta"},"hoverEvent":{"action":"show_text","contents":"https://github.com/BigPapi13/Delta"},"type":"text"},{"text":" was not found.","color":"red","type":"text"}]
execute store success score $profiler_installed tf2.var run function timekeeper:__load__
gamerule doImmediateRespawn true
gamerule doMobSpawning false
gamerule fallDamage false
gamerule drowningDamage true
gamerule keepInventory true
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule showDeathMessages false
scoreboard players set $Settings.show_debug_messages tf2.var 1
data merge storage tf2:maps {0:{name:"ad_test",origin:[-500.0d,1.0d,-500.0d],spawn:{red:[[-487.0d,1.0d,-487.0d]],blu:[[-513.0d,1.0d,-513.0d]]},spawn_time:{red:[5.0f],blu:[5.0f]},objectives:[{Pos:[-509.5d,1.0d,-499.5d],Tags:["tf2.objective","tf2.control_point"],data:{capture_threshold:20.0f,team:1b,increment:60.0f}},{Pos:[-499.5d,1.0d,-499.5d],Tags:["tf2.objective","tf2.control_point","tf2.locked"],data:{capture_threshold:20.0f,team:1b,increment:60.0f}},{Pos:[-489.5d,1.0d,-499.5d],Tags:["tf2.objective","tf2.control_point","tf2.locked"],data:{capture_threshold:25.0f,team:1b,increment:60.0f}}],gamemode:1b,timer:480.0f,setup_time:30.0f},1:{name:"cp_test",origin:[-300.0d,1.0d,-300.0d],spawn:{red:[[-279.0d,1.0d,-300.0d]],blu:[[-321.0d,1.0d,-300.0d]]},spawn_time:{red:[5.0f],blu:[5.0f]},objectives:[{Pos:[-311.5d,1.0d,-303.5d],Tags:["tf2.objective","tf2.control_point","tf2.locked"],data:{capture_threshold:5.0f,team:2b,increment:600.0f}},{Pos:[-306.5d,1.0d,-295.5d],Tags:["tf2.objective","tf2.control_point","tf2.locked"],data:{capture_threshold:15.0f,team:2b,increment:600.0f}},{Pos:[-299.5d,1.0d,-299.5d],Tags:["tf2.objective","tf2.control_point"],data:{capture_threshold:30.0f,team:0b,increment:600.0f}},{Pos:[-292.5d,1.0d,-303.5d],Tags:["tf2.objective","tf2.control_point","tf2.locked"],data:{capture_threshold:15.0f,team:1b,increment:600.0f}},{Pos:[-287.5d,1.0d,-295.5d],Tags:["tf2.objective","tf2.control_point","tf2.locked"],data:{capture_threshold:5.0f,team:1b,increment:600.0f}}],gamemode:2b,timer:600.0f},2:{name:"koth_woodlands",origin:[1050.0d,76.0d,910.0d],spawn:{red:[[1002.5d,76.0d,934.5d]],blu:[[1098.0d,68.0d,882.5d]]},spawn_time:{red:[5.0f],blu:[5.0f]},spawn_doors:{red:[{Pos:[1008.0d,67.0d,932.0d],Rotation:[-90.0f,0.0f],data:{dx:0,dy:4,dz:4,direct_tp:""}},{Pos:[997.0d,67.0d,925.0d],Rotation:[-90.0f,0.0f],data:{dx:10,dy:14,dz:18,direct_tp:"1009.5 67 934.5"}}],blu:[{Pos:[1097.0d,68.0d,864.0d],Rotation:[90.0f,0.0f],data:{dx:0,dy:3,dz:1,direct_tp:""}},{Pos:[1098.0d,68.0d,863.0d],Rotation:[90.0f,0.0f],data:{dx:3,dy:3,dz:4,direct_tp:"1096.0 68 865.0"}}]},resupply_cabinets:{red:[{Pos:[999.5d,67.5d,936.5d],Rotation:[-90.0f,0.0f]}],blu:[{Pos:[1101.5d,67.5d,885.0d],Rotation:[90.0f,0.0f]}]},objectives:[{Pos:[1050.5d,104.0d,910.5d],Tags:["tf2.objective","tf2.control_point"],data:{capture_threshold:20.0f,team:0b}},],pickups:[{Pos:[1054.5d,67.0d,946.5d],kind:"health",size:1b},{Pos:[1051.5d,75.0d,909.5d],kind:"health",size:1b},{Pos:[1017.5d,67.0d,943.5d],kind:"health",size:1b},{Pos:[1061.0d,71.0d,893.0d],kind:"health",size:1b},{Pos:[1067.5d,79.0d,947.5d],kind:"health",size:1b},{Pos:[1058.5d,99.5d,909.5d],kind:"health",size:1b},{Pos:[1019.5d,70.0d,866.5d],kind:"health",size:1b},{Pos:[1048.5d,67.0d,865.5d],kind:"health",size:2b},{Pos:[1056.0d,67.0d,914.0d],kind:"health",size:2b},{Pos:[1081.0d,76.0d,888.0d],kind:"health",size:2b},{Pos:[1036.0d,69.0d,889.0d],kind:"health",size:2b},{Pos:[1027.0d,67.0d,912.0d],kind:"health",size:2b},{Pos:[1069.0d,76.0d,902.0d],kind:"health",size:3b},{Pos:[1043.5d,101.0d,907.5d],kind:"ammo",size:1b},{Pos:[1065.5d,67.0d,898.5d],kind:"ammo",size:1b},{Pos:[1056.5d,68.0d,935.5d],kind:"ammo",size:1b},{Pos:[1042.5d,85.0d,913.5d],kind:"ammo",size:1b},{Pos:[1049.0d,67.0d,885.0d],kind:"ammo",size:2b},{Pos:[1047.5d,67.0d,916.5d],kind:"ammo",size:2b},{Pos:[1084.5d,68.0d,918.5d],kind:"ammo",size:2b},{Pos:[1084.5d,68.0d,918.5d],kind:"ammo",size:2b},{Pos:[1017.0d,67.0d,962.0d],kind:"ammo",size:2b},{Pos:[1057.0d,74.0d,884.3d],kind:"ammo",size:2b},{Pos:[1085.5d,70.0d,888.5d],kind:"ammo",size:3b}],gamemode:3b,timer:180.0f}}
execute unless score $initialization_complete tf2.var matches 1.. run function tf2:__private__/if_else/0
scoreboard players operation $Settings.max_batches tf2.var < 6 tf2.const
execute if score $Settings.max_batches tf2.var matches 6 run scoreboard players remove $Settings.max_batches tf2.var 1
execute store result score $batch_markers tf2.var if entity @e[type=marker,tag=tf2.batch]
execute unless score $batch_markers tf2.var = $Settings.max_batches tf2.var run function tf2:setup_markers
execute unless entity @a run function tf2:__private__/anonymous/0
return 1