scoreboard players operation @s tf2.last_slot = @s tf2.current_slot
scoreboard players add @s tf2.last_slot 0
execute store result score @s tf2.current_slot run data get entity @s SelectedItemSlot
execute unless score @s tf2.last_slot = @s tf2.current_slot run function tf2:__private__/if_else/29
function tf2:weapons/get_ammo
function tf2:weapons/actionbar
function tf2:weapons/set_ammo
function tf2:class/sniper/inventory_lock