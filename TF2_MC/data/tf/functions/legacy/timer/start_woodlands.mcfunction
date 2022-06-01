scoreboard players set $red_phase timer 0
scoreboard players set $blu_phase timer 0
scoreboard players set $start timer 3600
scoreboard players set $koth_overtime_eligible timer 0
scoreboard players set $continuation timer 0
scoreboard players set $stage timer 0
scoreboard players set $red_value timer 3600
scoreboard players set $blu_value timer 3600
scoreboard players set $red_respawn_delay timer 80
scoreboard players set $blu_respawn_delay timer 80
scoreboard players set $woodlands_central_point timer 0
scoreboard players set $team_in_control timer 0
scoreboard players set $koth_setup_time timer 100
scoreboard players set $is_koth timer 1
scoreboard players set $koth_ended timer 0
execute as @a run function tf:legacy/spawn
scoreboard players set $paused timer 0
bossbar set tf:red_timer players @a
bossbar set tf:red_timer visible true
bossbar set tf:blu_timer players @a
bossbar set tf:blu_timer visible true
setblock 1054 67 3911 minecraft:air
setblock 1054 103 3911 minecraft:white_stained_glass