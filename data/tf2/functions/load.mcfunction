#> tf2:load
#
# Defines scoreboard objectives, sets up game settings if it has not already been done, and summons marker entities.
#
# @handles #minecraft:load
# @context any
#declare storage tf2:maps
#declare storage tf2.__temp__:summon

# TODO expand this as time goes on
scoreboard objectives add tf2.ticks dummy
scoreboard objectives add tf2.const dummy
scoreboard objectives add tf2.var dummy
scoreboard objectives add tf2.settings dummy

# Gamemode key: 1 = A/D, 2 = Symmetrical CP, 3 = KOTH, 4 = Dom,
# 5 = CTF A/D, 6 = CTF Standard, 7 = Invade CTF / Special Delivery, 8 = HTF, 
# 9 = Payload, 10 = Payload Race, 11 / 12 = unused
# 13 = VIP, 14 = VIP Race (lol), 15 = Misc.
scoreboard objectives add tf2.gamemode dummy

scoreboard objectives add tf2.index dummy
scoreboard objectives add tf2.red_progress dummy
scoreboard objectives add tf2.blu_progress dummy
scoreboard objectives add tf2.capture_threshold dummy

scoreboard objectives add tf2.timer dummy
scoreboard objectives add tf2.timer.min dummy
scoreboard objectives add tf2.timer.sec dummy
scoreboard objectives add tf2.increment dummy

scoreboard objectives add tf2.queue_type trigger
scoreboard objectives add tf2.batch_number dummy
scoreboard objectives add tf2.class dummy
scoreboard objectives add tf2.team dummy
scoreboard objectives add tf2.health dummy
scoreboard objectives add tf2.dead deathCount
scoreboard objectives add tf2.respawn_timer dummy

scoreboard objectives add tf2.permanent.games_won dummy
scoreboard objectives add tf2.permanent.games_played dummy

# TODO remove this line later
scoreboard players set $show_debug_messages tf2.settings 1 

# only runs the very first time datapack is loaded
execute unless score $initialization_complete tf2.settings = $initialization_complete tf2.settings run function tf2:initialize

# set up teams
team add RED
team modify RED color red
team modify RED prefix "[RED] "
team modify RED friendlyFire false
team add BLU
team modify BLU color blue
team modify BLU prefix "[BLU] "
team modify BLU friendlyFire false

bossbar add tf2:timer_1 ""
bossbar add tf2:timer_2 ""
bossbar add tf2:timer_3 ""
bossbar add tf2:timer_4 ""
bossbar add tf2:timer_5 ""

# markers keep track of gamestate
execute store result score $batch_markers tf2.var if entity @e[type=marker,tag=tf2.batch]
execute unless score $batch_markers tf2.var = $max_batches tf2.settings run function tf2:setup_markers

data merge storage tf2:maps {0:{name: "test", origin: [-500.0d, 1.0d, -500.0d], spawn:{red:[[-487.0d, 1.0d, -487.0d]], blu:[[-513.0d, 1.0d, -513.0d]]}, spawn_time:{red:[5.0f],blu:[5.0f]}, objectives:[{Pos:[-489.5d, 1.0d, -499.5d], Tags:["tf2.objective","tf2.control_point"], data:{locked: 0b, capture_threshold: 15.0f, team: 1b, increment: 10.0f}},{Pos:[-499.5d, 1.0d, -499.5d], Tags:["tf2.objective","tf2.control_point"], data:{locked: 1b, capture_threshold: 15.0f, team: 1b, increment: 10.0f}},{Pos:[-509.5d, 1.0d, -499.5d], Tags:["tf2.objective","tf2.control_point"], data:{locked: 1b, capture_threshold: 15.0f, team: 1b, increment: 10.0f}}], gamemode: 1, timer: 360.0f}}
data merge storage tf2.__temp__:summon {}