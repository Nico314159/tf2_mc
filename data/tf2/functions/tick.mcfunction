scoreboard players add #global tf2.ticks 1
scoreboard players add @a tf2.ticks 1
execute as @a unless score @s tf2.ticks = #global tf2.ticks run function tf2:login

execute as @a if score @s tf2.selected_mode matches 1 run function tf2:select/comp_mode
execute as @a if score @s tf2.selected_mode matches 2 run function tf2:select/casual_mode
execute as @a if score @s tf2.selected_mode matches 3 run function tf2:select/chaos_mode