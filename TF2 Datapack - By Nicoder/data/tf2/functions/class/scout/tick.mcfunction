scoreboard players operation $last_slot tf2.var = $current_slot tf2.var
scoreboard players add $last_slot tf2.var 0
execute store result score $current_slot tf2.var run data get entity @s SelectedItemSlot
execute unless score $last_slot tf2.var = $current_slot tf2.var run function tf2:__private__/if_else/16
execute if predicate tf2:grounded run tag @s add tf2.can_double_jump
execute if score @s tf2.elytra_detect matches 1.. run function tf2:__private__/if_else/17
function tf2:class/scout/inventory_lock