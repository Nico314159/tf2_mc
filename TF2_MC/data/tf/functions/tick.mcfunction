scoreboard players add #global tf2.ticks 1
scoreboard players add @a tf2.ticks 1
execute as @a unless score @s tf2.ticks = #global tf2.ticks run function tf2:player_logged_in