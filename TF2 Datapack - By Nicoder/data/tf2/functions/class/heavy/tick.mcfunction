function tf2:weapons/get_ammo
function tf2:weapons/actionbar
function tf2:weapons/set_ammo
execute if predicate tf2:class/heavy/is_revving run scoreboard players add @s tf2.time_revved 1
execute if score @s tf2.time_revved >= @s tf2.rev_threshold run item modify entity @s hotbar.0 tf2:load_crossbow
execute unless score @s tf2.current_slot matches 0 unless score @s tf2.time_revved matches 0 run function tf2:__private__/if_else/25
function tf2:class/heavy/inventory_lock