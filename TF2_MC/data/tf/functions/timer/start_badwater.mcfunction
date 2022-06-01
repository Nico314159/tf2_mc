scoreboard players set $phase timer -2
scoreboard players set $setup_length timer 1200
scoreboard players set $start timer 6000
scoreboard players set $ending_type timer 1
scoreboard players set $overtime_eligible timer 0
scoreboard players set $continuation timer 0
scoreboard players set $stage timer 0
scoreboard players set $value timer 1200
scoreboard players set $points_capped timer 0
scoreboard players set $red_respawn_delay timer 100
scoreboard players set $blu_respawn_delay timer 80
scoreboard players set $red_value timer 0
scoreboard players set $blu_value timer 0
scoreboard players set $koth_ended timer 1
scoreboard players set $koth_overtime_eligible timer 0
scoreboard players set $is_koth timer 0
execute as @a run function tf:spawn
scoreboard players set $paused timer 0
bossbar set minecraft:timer players @a
bossbar set minecraft:timer visible true
bossbar set tf:red_timer visible false
bossbar set tf:blu_timer visible false

fill -792 64 -214 -794 65 -214 minecraft:air
fill -768 68 -196 -770 66 -196 minecraft:iron_bars


# point A
setblock -765 64 -230 minecraft:rail
setblock -765 63 -230 minecraft:red_stained_glass
setblock -765 62 -230 minecraft:red_stained_glass
setblock -765 61 -230 minecraft:brown_stained_glass
setblock -765 60 -230 minecraft:air

# point B
setblock -769 64 -207 minecraft:rail[shape=north_west]
setblock -769 63 -207 minecraft:red_stained_glass
setblock -769 62 -207 minecraft:red_stained_glass
setblock -769 61 -207 minecraft:brown_stained_glass
setblock -765 60 -230 minecraft:air

# point C
setblock -817 64 -207 rail[shape=east_west]
setblock -817 63 -207 minecraft:red_stained_glass
setblock -817 62 -207 minecraft:red_stained_glass
setblock -817 61 -207 minecraft:brown_stained_glass