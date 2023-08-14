scoreboard players operation @s tf2.last_slot = @s tf2.current_slot
scoreboard players add @s tf2.last_slot 0
execute store result score @s tf2.current_slot run data get entity @s SelectedItemSlot
execute unless score @s tf2.last_slot = @s tf2.current_slot run function tf2:__private__/if_else/26
function tf2:weapons/get_ammo
function tf2:weapons/actionbar
function tf2:weapons/set_ammo
execute if predicate tf2:grounded run tag @s add tf2.can_double_jump
execute if score @s tf2.elytra_detect matches 1.. run function tf2:__private__/if_else/27
function tf2:class/scout/inventory_lock