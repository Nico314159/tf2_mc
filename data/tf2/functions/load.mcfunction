# expand this as time goes on
scoreboard objectives add tf2.ticks dummy
scoreboard objectives add tf2.settings dummy
scoreboard objectives add tf2.selected_mode trigger
scoreboard objectives add tf2.gamestate dummy
scoreboard objectives add tf2.capture_progress dummy
scoreboard objectives add tf2.sprinting dummy

# TODO remove this line
scoreboard players set $show_debug_messages tf2.settings 1 

# TODO change this when voting is added
execute unless score $choose_map_randomly tf2.settings = $choose_map_randomly tf2.settings run scoreboard players set $choose_map_randomly tf2.settings 1