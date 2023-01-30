#> tf2:load
#
# Defines scoreboard objectives, sets up game settings if it has not already been done, and summons marker entities
#
# @handles #minecraft:load
# @context any

# TODO expand this as time goes on
scoreboard objectives add tf2.ticks dummy
scoreboard objectives add tf2.const dummy
scoreboard objectives add tf2.var dummy
scoreboard objectives add tf2.settings dummy
scoreboard objectives add tf2.queue_type trigger
scoreboard objectives add tf2.batch_number dummy
scoreboard objectives add tf2.gamestate dummy
scoreboard objectives add tf2.capture_progress dummy
scoreboard objectives add tf2.sprinting dummy
scoreboard objectives add tf2.class dummy
scoreboard objectives add tf2.team dummy
scoreboard objectives add tf2.health dummy

# TODO remove this line later
scoreboard players set $show_debug_messages tf2.settings 1 

# only runs the very first time datapack is loaded
execute unless score $initialization_complete tf2.settings = $initialization_complete tf2.settings run function tf2:initialize

# markers keep track of gamestate
execute store result score $batch_markers tf2.var if entity @e[type=marker,tag=tf2.batch]
execute unless score $batch_markers tf2.var = $max_batches tf2.settings run function tf2:setup_markers

data merge storage tf2:maps {0:{name: "test", gamemode: "test", origin: [-500.0d, 1.0d, -500.0d], spawn:{red:[[-487.0d, 1.0d, -487.0d]], blu:[[-513.0d, 1.0d, -513.0d]]}, respawn_time: 5.0d}}