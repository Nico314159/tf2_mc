function tf2:weapons/get_ammo
function tf2:hud/actionbar
function tf2:weapons/set_ammo
execute if score @s[tag=!tf2.in_construction_menu,tag=!tf2.need_to_switch_away] tf2.current_slot matches 3 run function tf2:class/engineer/construction_menu
execute if score @s[tag=!tf2.in_destruction_menu,tag=!tf2.need_to_switch_away] tf2.current_slot matches 4 run function tf2:class/engineer/destruction_menu
execute unless score @s tf2.current_slot matches 3..4 run tag @s remove tf2.need_to_switch_away
function tf2:class/engineer/inventory_lock
execute if score @s tf2.construction matches 1.. run function tf2:class/engineer/place_building
execute if score @s tf2.construction matches 1.. run scoreboard players reset @s tf2.construction
execute if score @s tf2.destruction matches 1.. run function tf2:class/engineer/remove_building
execute if score @s tf2.destruction matches 1.. run scoreboard players reset @s tf2.destruction