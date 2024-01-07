scoreboard players add @s tf2.current_slot 0
scoreboard players operation @s tf2.last_slot = @s tf2.current_slot
execute store result score @s tf2.current_slot run data get entity @s SelectedItemSlot
execute unless score @s tf2.last_slot = @s tf2.current_slot run function tf2:__private__/if_else/16