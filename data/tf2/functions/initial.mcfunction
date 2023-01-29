#> tf2:initial
#
# Sets up values of system constants and defaults for game settings
#
# @context any
# @within tf2:load

# TODO add more constants (for multiplication stuff)
scoreboard players set $2 tf2.const 2
scoreboard players set $3 tf2.const 3
scoreboard players set $4 tf2.const 4
scoreboard players set $5 tf2.const 5
scoreboard players set $10 tf2.const 10
scoreboard players set $20 tf2.const 20
scoreboard players set $100 tf2.const 100

#TODO replace line below when voting system is added
scoreboard players set $choose_map_randomly tf2.settings 1
scoreboard players set $random_crits tf2.settings 0
scoreboard players set $random_spread tf2.settings 0
scoreboard players set $use_server_mods tf2.settings 0
scoreboard players set $chat_bot tf2.settings 0
scoreboard players set $max_batches tf2.settings 3
scoreboard players set $initialization_complete tf2.settings 1