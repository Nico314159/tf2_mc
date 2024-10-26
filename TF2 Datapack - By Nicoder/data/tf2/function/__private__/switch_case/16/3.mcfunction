function tf2:weapons/get_ammo
function tf2:hud/actionbar
function tf2:weapons/set_ammo
scoreboard players set @s[predicate=tf2:grounded] tf2.can_double_jump 1
execute if score @s tf2.elytra_detect matches 1.. run function tf2:class/scout/double_jump
function tf2:class/scout/inventory_lock