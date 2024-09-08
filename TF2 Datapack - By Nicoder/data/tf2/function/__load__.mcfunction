scoreboard objectives add tf2.var dummy
scoreboard objectives add controls trigger
scoreboard objectives add autoreload trigger
scoreboard objectives add 0008it54g_p_join dummy
scoreboard objectives add tf2.const dummy
scoreboard players set 1024 tf2.const 1024
scoreboard players set 1048576 tf2.const 1048576
scoreboard players set 2 tf2.const 2
scoreboard players set 3 tf2.const 3
scoreboard players set 900 tf2.const 900
scoreboard players set 5 tf2.const 5
scoreboard players set 6 tf2.const 6
scoreboard players set 230400 tf2.const 230400
scoreboard players set 4 tf2.const 4
scoreboard players set 0 tf2.const 0
scoreboard players set 10 tf2.const 10
scoreboard players set 1800 tf2.const 1800
scoreboard players set 8 tf2.const 8
scoreboard players set 13 tf2.const 13
scoreboard players set 1 tf2.const 1
scoreboard players set 9 tf2.const 9
scoreboard players set 10000 tf2.const 10000
scoreboard players set 20 tf2.const 20
scoreboard players set 25 tf2.const 25
scoreboard players set 1050 tf2.const 1050
scoreboard players set -100 tf2.const -100
scoreboard players set 800 tf2.const 800
scoreboard players set 1570 tf2.const 1570
scoreboard players set 36 tf2.const 36
scoreboard players set 40 tf2.const 40
scoreboard players set 300 tf2.const 300
scoreboard players set -2000 tf2.const -2000
scoreboard players set 50 tf2.const 50
scoreboard players set 60 tf2.const 60
scoreboard players set 66 tf2.const 66
scoreboard players set 200 tf2.const 200
scoreboard players set 5833 tf2.const 5833
scoreboard players set 7500 tf2.const 7500
scoreboard players set 2000 tf2.const 2000
scoreboard players set 600 tf2.const 600
scoreboard players set 2400 tf2.const 2400
scoreboard players set 100 tf2.const 100
scoreboard players set 1000 tf2.const 1000
scoreboard players set 120 tf2.const 120
scoreboard players set -1 tf2.const -1
execute as @a run function tf2:__private__/trigger_add/enable
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
scoreboard objectives add tf2.max_timer dummy
scoreboard objectives add tf2.respawn_timer dummy
scoreboard objectives add tf2.respawn_timer.sec dummy
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
scoreboard objectives add tf2.model_number dummy
scoreboard objectives add tf2.age dummy
scoreboard objectives add tf2.class dummy
scoreboard objectives add tf2.last_class dummy
scoreboard objectives add tf2.team dummy
scoreboard objectives add tf2.max_health dummy
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
scoreboard objectives add tf2.time_idle dummy
scoreboard objectives add tf2.time_revved dummy
scoreboard objectives add tf2.rev_threshold dummy
scoreboard objectives add tf2.time_scoped dummy
scoreboard objectives add tf2.grace_period dummy
scoreboard objectives add tf2.permanent.games_won dummy
scoreboard objectives add tf2.permanent.games_played dummy
scoreboard objectives add tf2.permanent.double_jumps dummy
scoreboard objectives add tf2.fall_y dummy
scoreboard objectives add tf2.fall_y1 dummy
scoreboard objectives add tf2.fall_y2 dummy
scoreboard objectives add tf2.fall_y3 dummy
scoreboard objectives add tf2.last_x dummy
scoreboard objectives add tf2.now_x dummy
scoreboard objectives add tf2.last_z dummy
scoreboard objectives add tf2.now_z dummy
scoreboard objectives add tf2.drown_lost dummy
scoreboard objectives add tf2.time_surfaced dummy
scoreboard objectives add tf2.current_air dummy
scoreboard objectives add tf2.last_air dummy
scoreboard objectives add tf2.is_invisible dummy
scoreboard objectives add tf2.cloak dummy
scoreboard objectives add tf2.disguise.class dummy
scoreboard objectives add tf2.disguise.team dummy
scoreboard objectives add tf2.disguise.primary_CMD dummy
scoreboard objectives add tf2.door.wait dummy
scoreboard objectives add tf2.door.time_open dummy
scoreboard objectives add tf2.door.state dummy
scoreboard objectives add tf2.door.id dummy
scoreboard objectives add tf2.door.length dummy
scoreboard objectives add tf2.door.pos dummy
scoreboard objectives add tf2.door.vel dummy
scoreboard objectives add tf2.door.accel dummy
scoreboard objectives add tf2.hits_taken dummy
scoreboard objectives add tf2.ticks_since_hurt dummy
scoreboard objectives add tf2.interpolate_rmb dummy
scoreboard objectives add tf2.menu_ticks dummy
scoreboard objectives add tf2.uuid.0 dummy
scoreboard objectives add tf2.uuid.1 dummy
scoreboard objectives add tf2.uuid.2 dummy
scoreboard objectives add tf2.uuid.3 dummy
scoreboard objectives add tf2.player.id dummy
scoreboard objectives add tf2.afterburn_ticks dummy
scoreboard objectives add tf2.afterburn_length dummy
scoreboard objectives add tf2.airblast_delay dummy
scoreboard objectives add tf2.heal_target dummy
scoreboard objectives add tf2.ubercharge dummy
scoreboard objectives add tf2.health dummy "\u2764"
scoreboard objectives setdisplay below_name tf2.health
scoreboard objectives add tf2.queue_type trigger
scoreboard objectives add tf2.coas used:carrot_on_a_stick
scoreboard objectives add tf2.elytra_detect custom:aviate_one_cm
scoreboard objectives add tf2.fall custom:fall_one_cm
scoreboard objectives add tf2.air air
scoreboard objectives add tf2.food food
team add RED "RED"
team modify RED color red
team modify RED prefix "[RED] "
team modify RED friendlyFire false
team modify RED nametagVisibility hideForOtherTeams
team add BLU "BLU"
team modify BLU color blue
team modify BLU prefix "[BLU] "
team modify BLU friendlyFire false
team modify BLU nametagVisibility hideForOtherTeams
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
execute store success score $found_dependency tf2.var run function player_motion:internal/technical/load
execute unless score $found_dependency tf2.var matches 1.. run return run tellraw @a ["",{"text":"[ERROR] ","color":"dark_red","type":"text"},{"text":"Dependency ","color":"red","type":"text"},{"text":"player_motion","color":"aqua","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/MulverineX/player_motion"},"hoverEvent":{"action":"show_text","contents":"https://github.com/MulverineX/player_motion"},"type":"text"},{"text":" was not found.","color":"red","type":"text"}]
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
data merge storage tf2:maps {0:{name:"ad_test",origin:[-500.0d,1.0d,-500.0d],spawn_point:{red:[[-487.0d,1.0d,-487.0d]],blu:[[-513.0d,1.0d,-513.0d]]},spawn_time:{red:[5.0f],blu:[5.0f]},objectives:[{Pos:[-509.5d,1.0d,-499.5d],Tags:["tf2.control_point"],data:{capture_threshold:20.0f,team:1b,increment:60.0f}},{Pos:[-499.5d,1.0d,-499.5d],Tags:["tf2.control_point","tf2.locked"],data:{capture_threshold:20.0f,team:1b,increment:60.0f}},{Pos:[-489.5d,1.0d,-499.5d],Tags:["tf2.control_point","tf2.locked"],data:{capture_threshold:25.0f,team:1b,increment:60.0f}}],gamemode:1b,timer:480.0f,setup_time:30.0f},1:{name:"cp_test",origin:[-300.0d,1.0d,-300.0d],spawn_point:{red:[[-279.0d,1.0d,-300.0d]],blu:[[-321.0d,1.0d,-300.0d]]},spawn_time:{red:[5.0f],blu:[5.0f]},objectives:[{Pos:[-311.5d,1.0d,-303.5d],Tags:["tf2.control_point","tf2.locked"],data:{capture_threshold:5.0f,team:2b,increment:600.0f}},{Pos:[-306.5d,1.0d,-295.5d],Tags:["tf2.control_point","tf2.locked"],data:{capture_threshold:15.0f,team:2b,increment:600.0f}},{Pos:[-299.5d,1.0d,-299.5d],Tags:["tf2.control_point"],data:{capture_threshold:30.0f,team:0b,increment:600.0f}},{Pos:[-292.5d,1.0d,-303.5d],Tags:["tf2.control_point","tf2.locked"],data:{capture_threshold:15.0f,team:1b,increment:600.0f}},{Pos:[-287.5d,1.0d,-295.5d],Tags:["tf2.control_point","tf2.locked"],data:{capture_threshold:5.0f,team:1b,increment:600.0f}}],gamemode:2b,timer:600.0f},2:{name:"koth_woodlands",origin:[1050.0d,76.0d,910.0d],spawn_point:{red:[[1002.5d,76.0d,934.5d]],blu:[[1098.0d,68.0d,882.5d]]},spawn_time:{red:[5.0f],blu:[5.0f]},spawn_doors:{red:[{Pos:[1008.0d,67.0d,932.0d],Rotation:[-90.0f,0.0f],data:{dx:0,dy:4,dz:4,direct_tp:""}},{Pos:[997.0d,67.0d,925.0d],Rotation:[-90.0f,0.0f],data:{dx:10,dy:14,dz:18,direct_tp:"1009.5 67 934.5"}}],blu:[{Pos:[1097.0d,68.0d,864.0d],Rotation:[90.0f,0.0f],data:{dx:0,dy:3,dz:1,direct_tp:""}},{Pos:[1098.0d,68.0d,863.0d],Rotation:[90.0f,0.0f],data:{dx:3,dy:3,dz:22,direct_tp:"1096.0 68 865.0"}},{Pos:[1094.0d,68.0d,868.0d],Rotation:[90.0f,0.0f],data:{dx:3,dy:3,dz:18,direct_tp:"1096.0 68 865.0"}},{Pos:[1093.0d,69.0d,868.0d],Rotation:[90.0f,0.0f],data:{dx:0,dy:1,dz:18,direct_tp:""}}]},resupply_cabinets:{red:[{Pos:[997.45d,67.52d,932.0d],Rotation:[-90.0f,0.0f]}],blu:[{Pos:[1101.59d,68.52d,885.0d],Rotation:[90.0f,0.0f]}]},objectives:[{Pos:[1050.5d,104.0d,910.5d],Tags:["tf2.control_point"],data:{capture_threshold:20.0f,team:0b}},],pickups:[{Pos:[1054.5d,67.0d,946.5d],kind:"health",size:1b},{Pos:[1051.5d,75.0d,909.5d],kind:"health",size:1b},{Pos:[1017.5d,67.0d,943.5d],kind:"health",size:1b},{Pos:[1061.0d,71.0d,893.0d],kind:"health",size:1b},{Pos:[1067.5d,79.0d,947.5d],kind:"health",size:1b},{Pos:[1058.5d,99.5d,909.5d],kind:"health",size:1b},{Pos:[1019.5d,69.5d,866.5d],kind:"health",size:1b},{Pos:[1048.5d,67.0d,865.5d],kind:"health",size:2b},{Pos:[1056.0d,67.0d,914.0d],kind:"health",size:2b},{Pos:[1081.0d,76.0d,888.0d],kind:"health",size:2b},{Pos:[1036.0d,69.0d,889.0d],kind:"health",size:2b},{Pos:[1027.0d,67.0d,912.0d],kind:"health",size:2b},{Pos:[1069.0d,75.5d,902.0d],kind:"health",size:3b},{Pos:[1043.5d,101.0d,907.5d],kind:"ammo",size:1b},{Pos:[1065.5d,67.0d,898.5d],kind:"ammo",size:1b},{Pos:[1056.5d,67.5d,935.5d],kind:"ammo",size:1b},{Pos:[1042.5d,85.0d,913.5d],kind:"ammo",size:1b},{Pos:[1049.0d,67.0d,885.0d],kind:"ammo",size:2b},{Pos:[1047.5d,67.0d,916.5d],kind:"ammo",size:2b},{Pos:[1084.5d,68.0d,918.5d],kind:"ammo",size:2b},{Pos:[1017.0d,67.0d,962.0d],kind:"ammo",size:2b},{Pos:[1057.0d,74.0d,884.3d],kind:"ammo",size:2b},{Pos:[1085.5d,69.7d,888.5d],kind:"ammo",size:3b}],gamemode:3b,timer:180.0f},3:{name:"ad_gorge",origin:[1000.0,100.0,-1000.0],spawn_point:{red:[[1126.5,124.0,-787.5]],blu:[[1165.0,115.0,-969.5],[1165.0,115.0,-969.5],[1159.0,127.0,-902.5]]},spawn_time:{red:[7.0,7.0,8.0],blu:[2.0,2.0,3.0]},spawn_doors:{red:[{Pos:[1145.0,124.0,-785.0],Rotation:[-90.0f,0.0f],data:{dx:0,dy:1,dz:0,direct_tp:""}},{Pos:[1133.0,124.0,-787.0],Rotation:[-90.0f,0.0f],data:{dx:11,dy:1,dz:4,direct_tp:"1147.0 124 -784.5"}},{Pos:[1129.0,124.0,-792.0],Rotation:[-180.0f,0.0f],data:{dx:1,dy:1,dz:1,direct_tp:""}},{Pos:[1131.0,124.0,-791.0],Rotation:[-135.0f,0.0f],data:{dx:0,dy:1,dz:0,direct_tp:""}},{Pos:[1118.0,124.0,-790.0],Rotation:[-90.0f,0.0f],data:{dx:13,dy:2,dz:12,direct_tp:"1131.5 124 -792.5"}},{Pos:[1121.0,124.0,-793.0],Rotation:[-90.0f,0.0f],data:{dx:7,dy:2,dz:2,direct_tp:"1131.5 124 -792.5"}}],blu:[{Pos:[1181.0,115.0,-951.0],Rotation:[0.0f,0.0f],data:{dx:3,dy:2,dz:0,direct_tp:""}},{Pos:[1173.0,115.0,-965.3],Rotation:[0.0f,0.0f],data:{dx:11,dy:3,dz:12,direct_tp:"1183.0 115 -949.5"}},{Pos:[1166.0,115.0,-952.0],Rotation:[0.0f,0.0f],data:{dx:3,dy:2,dz:0,direct_tp:""}},{Pos:[1160.3,115.0,-956.0],Rotation:[0.0f,0.0f],data:{dx:12,dy:2,dz:3,direct_tp:"1168.0 115 -950.5"}},{Pos:[1156.0,115.0,-957.0],Rotation:[0.0f,0.0f],data:{dx:3,dy:3,dz:4,direct_tp:"1168.0 115 -950.5"}},{Pos:[1152.0,115.0,-957.0],Rotation:[0.0f,0.0f],data:{dx:3,dy:5,dz:4,direct_tp:"1168.0 115 -950.5"}},{Pos:[1153.0,115.0,-974.0],Rotation:[180.0f,0.0f],data:{dx:19,dy:5,dz:16,direct_tp:"1168.0 115 -950.5"}},{Pos:[1142.0,118.0,-959.0],Rotation:[45.0f,0.0f],data:{dx:1,dy:2,dz:0,direct_tp:""}},{Pos:[1143.0,118.0,-958.0],Rotation:[45.0f,0.0f],data:{dx:0,dy:2,dz:0,direct_tp:""}},{Pos:[1144.0,118.0,-970.0],Rotation:[45.0f,0.0f],data:{dx:7,dy:2,dz:17,direct_tp:"1141.5 118 -956.5"}},{Pos:[1141.0,118.0,-964.0],Rotation:[45.0f,0.0f],data:{dx:2,dy:2,dz:4,direct_tp:"1141.5 118 -956.5"}},{Pos:[1153.0,127.0,-898.0],Rotation:[0.0f,0.0f],data:{dx:2,dy:1,dz:0,direct_tp:""}},{Pos:[1152.0,127.0,-911.3],Rotation:[0.0f,0.0f],data:{dx:9,dy:2,dz:12,direct_tp:"1154.5 127 -896.5"}}]},resupply_cabinets:{red:[{Pos:[1131.0,124.52,-778.45],Rotation:[180.0f,0.0f]}],blu:[{Pos:[1159.0,127.52,-898.49],Rotation:[180.0f,0.0f]},{Pos:[1165.0,115.52,-957.42],Rotation:[180.0f,0.0f]}]},automatic_doors:[{Pos:[1166.00,121d,-859.75],size:[6.0,3.0,0.5],wait:600,path:"up",path_length:3,state:4,block:"oak_fence"},{Pos:[1126.00,122d,-859.75],size:[7.0,2.0,0.5],wait:600,path:"up",path_length:2,state:4,block:"oak_fence"},{Pos:[1152.00,127d,-896.75],size:[5.0,3.0,0.5],wait:15,path:"up",path_length:2,state:1,block:"oak_fence"},{Pos:[1145.00,124d,-785.00],size:[0.999,2.0,1.0],wait:15,path:"up",path_length:3,state:2,block:"barrier"},{Pos:[1148.00,127d,-827.80],size:[3.0,3.0,0.6],wait:-1,path:"east",path_length:2.75,state:1,block:"andesite_wall"},{Pos:[1162.25,122d,-839.00],size:[0.5,3.0,4.0],wait:-1,path:"up",path_length:4,state:1,block:"oak_fence"},{Pos:[1165.00,122d,-820.625],size:[5.0,3.0,0.5],wait:-1,path:"up",path_length:2.75,state:1,block:"oak_fence"}],objectives:[{Pos:[1149.5,121.0,-881.5],Tags:["tf2.control_point"],data:{capture_threshold:60.0f,team:1b,increment:480.0f,events:{spawn_point:{blu:2},spawn_time:{blu:2},doors:[{id:2,state:3},{id:4,state:0},{id:5,state:0},{id:6,state:0}]}}},{Pos:[1149.5,118.0,-811.5],Tags:["tf2.control_point","tf2.locked"],data:{capture_threshold:12.0f,team:1b}},],pickups:[{Pos:[1141.5,118.5,-932.5],kind:"health",size:2b},{Pos:[1143.0,118.5,-932.5],kind:"ammo",size:3b},{Pos:[1156.5,122.5,-916.5],kind:"ammo",size:3b},{Pos:[1183.0,122.5,-919.5],kind:"health",size:2b},{Pos:[1183.0,122.5,-921.5],kind:"ammo",size:3b},{Pos:[1150.3,118.0,-899.5],kind:"health",size:2b},{Pos:[1148.7,118.0,-899.5],kind:"ammo",size:2b},{Pos:[1149.5,116.0,-885.0],kind:"health",size:2b},{Pos:[1150.3,121.0,-864.5],kind:"ammo",size:2b},{Pos:[1148.7,121.0,-864.5],kind:"health",size:2b},{Pos:[1169.5,121.0,-844.5],kind:"ammo",size:3b},{Pos:[1167.5,121.0,-844.5],kind:"health",size:2b},{Pos:[1126.5,127.0,-852.5],kind:"ammo",size:2b},{Pos:[1131.3,122.0,-833.5],kind:"ammo",size:2b},{Pos:[1132.7,122.0,-833.5],kind:"health",size:2b},{Pos:[1160.5,127.0,-832.2],kind:"ammo",size:2b},{Pos:[1160.5,127.0,-830.8],kind:"health",size:2b},{Pos:[1166.8,127.0,-821.5],kind:"health",size:1b},{Pos:[1165.2,127.0,-821.5],kind:"ammo",size:2b},{Pos:[1170.2,122.0,-803.7],kind:"health",size:2b},{Pos:[1170.2,122.0,-802.3],kind:"ammo",size:2b},{Pos:[1149.5,118.0,-798.5],kind:"health",size:2b},{Pos:[1139.5,118.0,-813.5],kind:"ammo",size:2b},{Pos:[1159.5,118.0,-813.5],kind:"ammo",size:2b}],gamemode:1,timer:360.0,setup_time:60.0},4:{name:"koth_harvest",origin:[-1000.0,100.0,-1000.0],spawn_point:{red:[[-1083.5,74.0,-1048.5]],blu:[[-1008.5,74.0,-1027.5]]},spawn_time:{red:[6.0],blu:[6.0]},spawn_doors:{red:[{Pos:[-1082.0,74.0,-1053.0],Rotation:[180.0f,0.0f],data:{dx:0,dy:1,dz:0,direct_tp:""}},{Pos:[-1091.0,74.0,-1052.0],Rotation:[180.0f,0.0f],data:{dx:10,dy:1,dz:3,direct_tp:"-1081.5 74 -1053.5"}},{Pos:[-1091.0,74.0,-1049.0],Rotation:[0.0f,0.0f],data:{dx:10,dy:1,dz:3,direct_tp:"-1081.5 74 -1043.5"}},{Pos:[-1082.0,74.0,-1045.0],Rotation:[0.0f,0.0f],data:{dx:0,dy:1,dz:0,direct_tp:""}}],blu:[{Pos:[-1011.0,74.0,-1032.0],Rotation:[180.0f,0.0f],data:{dx:0,dy:1,dz:0,direct_tp:""}},{Pos:[-1012.0,74.0,-1031.0],Rotation:[180.0f,0.0f],data:{dx:10,dy:1,dz:3,direct_tp:"-1010.5 74 -1032.5"}},{Pos:[-1012.0,74.0,-1028.0],Rotation:[0.0f,0.0f],data:{dx:10,dy:1,dz:3,direct_tp:"-1010.5 74 -1022.5"}},{Pos:[-1011.0,74.0,-1024.0],Rotation:[0.0f,0.0f],data:{dx:0,dy:1,dz:0,direct_tp:""}}]},resupply_cabinets:{red:[{Pos:[-1080.5,74.52,-1048.5],Rotation:[90.0f,0.0f]}],blu:[{Pos:[-1011.5,74.52,-1027.5],Rotation:[-90.0f,0.0f]}]},automatic_doors:[{Pos:[-1082.00,74.0,-1052.75],size:[1.0,2.0,0.5],wait:20,path:"up",path_length:1.9,state:2,block:"oak_fence"},{Pos:[-1082.00,74.0,-1044.75],size:[1.0,2.0,0.5],wait:20,path:"up",path_length:1.9,state:2,block:"oak_fence"},{Pos:[-1011.00,74.0,-1031.75],size:[1.0,2.0,0.5],wait:20,path:"up",path_length:1.9,state:3,block:"oak_fence"},{Pos:[-1011.00,74.0,-1023.75],size:[1.0,2.0,0.5],wait:20,path:"up",path_length:1.9,state:3,block:"oak_fence"},{Pos:[-1028.00,75.0,-1039.60],size:[4.0,3.0,0.5],path:"up",path_length:3,state:1,block:"barrier"},{Pos:[-1024.00,75.0,-1010.00],size:[0.5,3.0,3.0],path:"up",path_length:3,state:1,block:"barrier"},{Pos:[-1042.00,75.0,-1007.00],size:[4.0,3.0,0.5],path:"up",path_length:3,state:1,block:"barrier"},{Pos:[-1016.90,74.0,-1054.00],size:[0.5,3.0,4.0],path:"up",path_length:3,state:1,block:"barrier"},{Pos:[-1013.00,74.0,-1035.60],size:[4.0,3.0,0.5],path:"up",path_length:3,state:1,block:"barrier"}],objectives:[{Pos:[-1046d,75d,-1038d],Tags:["tf2.control_point"],data:{capture_threshold:16.0f,team:0b}}],pickups:[{Pos:[-1062.5,76.0,-1017.0],kind:"health",size:2b},{Pos:[-1068.5,76.0,-1017.0],kind:"ammo",size:2b},{Pos:[-1043.0,74.0,-1067.0],kind:"health",size:1b},{Pos:[-1067.5,75.0,-1037.5],kind:"health",size:1b},{Pos:[-1060.5,75.0,-1030.5],kind:"ammo",size:2b},{Pos:[-1053.5,75.0,-1061.5],kind:"ammo",size:2b},{Pos:[-1056.25,81.0,-1064.5],kind:"health",size:2b},{Pos:[-1057.75,81.0,-1064.5],kind:"ammo",size:2b},{Pos:[-1029.5,76.0,-1059.0],kind:"health",size:2b},{Pos:[-1023.5,76.0,-1059.0],kind:"ammo",size:2b},{Pos:[-1049.0,74.0,-1009.0],kind:"health",size:1b},{Pos:[-1024.5,75.0,-1038.5],kind:"health",size:1b},{Pos:[-1031.5,75.0,-1045.5],kind:"ammo",size:2b},{Pos:[-1038.5,75.0,-1014.5],kind:"ammo",size:2b},{Pos:[-1035.75,81.0,-1011.5],kind:"health",size:2b},{Pos:[-1034.25,81.0,-1011.5],kind:"ammo",size:2b}],gamemode:3b,timer:180.0f}}
execute unless score $initialization_complete tf2.var matches 1.. run function tf2:__private__/if_else/0
scoreboard players operation $Settings.max_batches tf2.var < 5 tf2.const
execute store result score $batch_markers tf2.var if entity @e[type=marker,tag=tf2.batch]
execute unless score $batch_markers tf2.var = $Settings.max_batches tf2.var run function tf2:setup_markers
execute unless entity @a run function tf2:session/increment_all_globals
forceload add 1136 -960
forceload add 1152 -960
forceload add 1168 -960
function tf2:load_static_props
return 1