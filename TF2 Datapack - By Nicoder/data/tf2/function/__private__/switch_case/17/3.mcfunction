function tf2:weapons/get_ammo
function tf2:hud/actionbar
function tf2:weapons/set_ammo
scoreboard players set @s[predicate=tf2:grounded] tf2.can_double_jump 1
execute if score @s tf2.can_double_jump matches 1 unless predicate tf2:input/jump unless predicate tf2:grounded run scoreboard players set @s tf2.can_double_jump 2
execute if score @s tf2.can_double_jump matches 2 if predicate tf2:input/jump run function tf2:class/scout/double_jump
function tf2:class/scout/inventory_lock