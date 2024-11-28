scoreboard players set @s tf2.coas 0
execute store result score $__item_id__ tf2.var run data get entity @s SelectedItem.components.minecraft:custom_model_data
execute if score $__item_id__ tf2.var matches 0 run return fail
execute if score $__item_id__ tf2.var matches 10 run function tf2:__private__/if_else/65
scoreboard players operation @s tf2.class = $__item_id__ tf2.var
execute if score $__item_id__ tf2.var matches 1..9 unless score @s tf2.last_class = @s[tag=!tf2.in_spawn] tf2.class run return run function tf2:player/death
execute unless score @s tf2.last_class = @s tf2.class run return run function tf2:class_select
clear @s carrot_on_a_stick
attribute @s minecraft:jump_strength modifier remove tf2:no_jump
attribute @s minecraft:movement_speed modifier remove tf2:no_move