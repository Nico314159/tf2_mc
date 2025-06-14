function tf2:weapons/get_ammo
function tf2:hud/actionbar
function tf2:weapons/set_ammo
attribute @s[predicate=tf2:class/heavy/is_revving] minecraft:movement_speed modifier add tf2:slow_while_revving -0.476 add_multiplied_total
attribute @s[predicate=!tf2:class/heavy/is_revving] minecraft:movement_speed modifier remove tf2:slow_while_revving
attribute @s[predicate=tf2:class/heavy/is_revving] minecraft:jump_strength modifier add tf2:no_jump -1 add_multiplied_total
attribute @s[predicate=!tf2:class/heavy/is_revving] minecraft:jump_strength modifier remove tf2:no_jump
scoreboard players add @s[predicate=tf2:class/heavy/is_revving] tf2.time_revved 1000
execute unless score @s tf2.current_slot matches 0 unless score @s tf2.time_revved matches 0 run function tf2:__private__/if_else/86
scoreboard players set @s[predicate=!tf2:class/heavy/is_revving] tf2.time_revved 0
function tf2:class/heavy/inventory_lock