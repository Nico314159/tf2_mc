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

scoreboard objectives add tf2.gamestate dummy
scoreboard objectives add tf2.red_progress dummy
scoreboard objectives add tf2.blu_progress dummy
scoreboard objectives add tf2.capture_threshold dummy
scoreboard objectives add tf2.locked dummy

scoreboard objectives add tf2.batch_number dummy
scoreboard objectives add tf2.queue_type trigger
scoreboard objectives add tf2.class dummy
scoreboard objectives add tf2.team dummy
scoreboard objectives add tf2.health dummy
scoreboard objectives add tf2.dead deathCount
scoreboard objectives add tf2.respawn_timer dummy

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

# markers keep track of gamestate
execute store result score $batch_markers tf2.var if entity @e[type=marker,tag=tf2.batch]
execute unless score $batch_markers tf2.var = $max_batches tf2.settings run function tf2:setup_markers

data merge storage tf2:maps {0:{name: "test", gamemode: "cp", origin: [-500.0f, 1.0f, -500.0f], spawn:{red:[[-487.0f, 1.0f, -487.0f]], blu:[[-513.0f, 1.0f, -513.0f]]}, spawn_time:{red:[5.0f],blu:[5.0f]}, objectives:[{Pos:[-500.0f, 1.0f, -500.0f], Tags:["tf2.objective","tf2.control_point"], data:{locked: 0b, capture_threshold: 15.0f}}], gamestate:{}}}