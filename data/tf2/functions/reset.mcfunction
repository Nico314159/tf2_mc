# TODO work on win/lose system (code below is placeholder)
execute as @a if score @s tf2.batch_number = $current tf2.batch_number if score @s tf2.team = $winner tf2.team run tag @s add tf2.winner
execute as @a if score @s tf2.batch_number = $current tf2.batch_number unless score @s tf2.team = $winner tf2.team run tag @s add tf2.loser

# TODO make compatible with parallel games
execute as @a if score @s tf2.batch_number = $current tf2.batch_number run tag @s remove tf2.is_playing
scoreboard players set @a tf2.queue_type 0
scoreboard players set $payload_progress tf2.gamestate 0
scoreboard players set $game_ended tf2.gamestate 0
scoreboard players set $timer_active tf2.gamestate 0
scoreboard players reset * tf2.capture_progress

# relog everybody
scoreboard players add $global tf2.ticks 1 
scoreboard players enable @a tf2.queue_type 
