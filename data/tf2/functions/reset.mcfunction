tag @a remove isPlaying
scoreboard players set @a tf2.selected_mode 0
scoreboard players set $points_capped tf2.gamestate 0
scoreboard players set $game_ended tf2.gamestate 0
scoreboard players set $timer_active tf2.gamestate 0

# relog everybody
scoreboard players add #global tf2.ticks 1 
scoreboard players enable @a tf2.selected_mode 
