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
execute as @a run function tf:legacy/spawn
scoreboard players set $paused timer 0
bossbar set minecraft:timer players @a
bossbar set minecraft:timer visible true
bossbar set tf:red_timer visible false
bossbar set tf:blu_timer visible false

fill 217 57 29 218 66 31 minecraft:air 
fill 218 63 29 218 63 31 minecraft:light_blue_concrete
setblock 217 63 29 minecraft:light_blue_glazed_terracotta[facing=west] 
setblock 217 63 30 minecraft:light_blue_glazed_terracotta[facing=south] 
setblock 217 63 31 minecraft:light_blue_glazed_terracotta[facing=west] 
fill 218 66 31 218 64 29 minecraft:chain[axis=z]
teleport f0744d65-b93c-4396-8a6e-75577180dc85 222.6 65 42

# point A
setblock 233 66 43 minecraft:red_wall_banner[facing=west]{Patterns:[{Color:0,Pattern:"rs"},{Color:0,Pattern:"ls"},{Color:0,Pattern:"ms"},{Color:0,Pattern:"ts"},{Color:14,Pattern:"bo"}]}
setblock 234 66 43 minecraft:red_wall_banner[facing=east]{Patterns:[{Color:0,Pattern:"rs"},{Color:0,Pattern:"ls"},{Color:0,Pattern:"ms"},{Color:0,Pattern:"ts"},{Color:14,Pattern:"bo"}]}

# point B
setblock 234 73 -11 minecraft:red_wall_banner[facing=south]{Patterns:[{Color:0,Pattern:"rs"},{Color:0,Pattern:"bs"},{Color:0,Pattern:"ts"},{Color:14,Pattern:"cbo"},{Color:0,Pattern:"ls"},{Color:0,Pattern:"ms"},{Color:14,Pattern:"bo"}]}
setblock 234 73 -12 minecraft:red_wall_banner[facing=north]{Patterns:[{Color:0,Pattern:"rs"},{Color:0,Pattern:"bs"},{Color:0,Pattern:"ts"},{Color:14,Pattern:"cbo"},{Color:0,Pattern:"ls"},{Color:0,Pattern:"ms"},{Color:14,Pattern:"bo"}]}

# point C
setblock 235 76 -39 minecraft:red_wall_banner[facing=south]{Patterns:[{Color:0,Pattern:"ts"},{Color:0,Pattern:"bs"},{Color:0,Pattern:"rs"},{Color:14,Pattern:"ms"},{Color:0,Pattern:"ls"},{Color:14,Pattern:"bo"}]}
setblock 235 76 -40 minecraft:red_wall_banner[facing=north]{Patterns:[{Color:0,Pattern:"ts"},{Color:0,Pattern:"bs"},{Color:0,Pattern:"rs"},{Color:14,Pattern:"ms"},{Color:0,Pattern:"ls"},{Color:14,Pattern:"bo"}]}

# point D
setblock 247 76 -42 minecraft:red_wall_banner[facing=north]{Patterns:[{Color:0,Pattern:"rs"},{Color:0,Pattern:"bs"},{Color:0,Pattern:"ts"},{Color:14,Pattern:"cbo"},{Color:0,Pattern:"ls"},{Color:14,Pattern:"bo"}]}
setblock 247 76 -40 minecraft:red_wall_banner[facing=south]{Patterns:[{Color:0,Pattern:"rs"},{Color:0,Pattern:"bs"},{Color:0,Pattern:"ts"},{Color:14,Pattern:"cbo"},{Color:0,Pattern:"ls"},{Color:14,Pattern:"bo"}]}

# point E
setblock 251 78 11 minecraft:red_wall_banner[facing=north]{Patterns:[{Color:0,Pattern:"ls"},{Color:0,Pattern:"ts"},{Color:0,Pattern:"ms"},{Color:0,Pattern:"bs"},{Color:14,Pattern:"bo"}]}
setblock 251 78 12 minecraft:red_wall_banner[facing=south]{Patterns:[{Color:0,Pattern:"ls"},{Color:0,Pattern:"ts"},{Color:0,Pattern:"ms"},{Color:0,Pattern:"bs"},{Color:14,Pattern:"bo"}]}

# point F
setblock 266 77 32 minecraft:red_wall_banner[facing=south]{Patterns:[{Color:0,Pattern:"ms"},{Color:14,Pattern:"rs"},{Color:0,Pattern:"ts"},{Color:0,Pattern:"ls"},{Color:14,Pattern:"bo"}]}
setblock 266 77 31 minecraft:red_wall_banner[facing=north]{Patterns:[{Color:0,Pattern:"ms"},{Color:14,Pattern:"rs"},{Color:0,Pattern:"ts"},{Color:0,Pattern:"ls"},{Color:14,Pattern:"bo"}]}

# point G
setblock 268 71 6 minecraft:red_wall_banner[facing=south]{Patterns:[{Color:0,Pattern:"rs"},{Color:0,Pattern:"ms"},{Color:14,Pattern:"hh"},{Color:14,Pattern:"vh"},{Color:0,Pattern:"bs"},{Color:0,Pattern:"ls"},{Color:0,Pattern:"ts"},{Color:14,Pattern:"bo"}]}
setblock 268 71 5 minecraft:red_wall_banner[facing=north]{Patterns:[{Color:0,Pattern:"rs"},{Color:0,Pattern:"ms"},{Color:14,Pattern:"hh"},{Color:14,Pattern:"vh"},{Color:0,Pattern:"bs"},{Color:0,Pattern:"ls"},{Color:0,Pattern:"ts"},{Color:14,Pattern:"bo"}]}

# point H
setblock 268 69 -18 minecraft:red_wall_banner[facing=north]{Patterns:[{Color:0,Pattern:"rs"},{Color:0,Pattern:"ls"},{Color:0,Pattern:"ms"},{Color:14,Pattern:"bo"}]}
setblock 268 69 -17 minecraft:red_wall_banner[facing=south]{Patterns:[{Color:0,Pattern:"rs"},{Color:0,Pattern:"ls"},{Color:0,Pattern:"ms"},{Color:14,Pattern:"bo"}]}
