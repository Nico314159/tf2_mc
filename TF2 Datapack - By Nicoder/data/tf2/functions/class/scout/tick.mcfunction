function tf2:class/scout/inventory_lock
execute if predicate tf2:grounded run tag @s add tf2.can_double_jump
execute if score @s tf2.elytra_detect matches 1.. run function tf2:__private__/if_else/16