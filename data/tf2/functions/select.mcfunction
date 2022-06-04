execute if score @s tf2.selected_mode matches 1 run function tf2:select/comp_mode
execute if score @s tf2.selected_mode matches 2 run function tf2:select/casual_mode
execute if score @s tf2.selected_mode matches 3 run function tf2:select/chaos_mode
tag @s add tf2.waiting_room