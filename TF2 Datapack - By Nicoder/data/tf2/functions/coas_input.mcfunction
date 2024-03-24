scoreboard players set @s tf2.coas 0
execute store result score $__item_id__ tf2.var run data get entity @s SelectedItem.components.minecraft:custom_model_data
execute if score $__item_id__ tf2.var matches 0 run return fail
execute if score $__item_id__ tf2.var matches 10 run scoreboard players operation @s tf2.last_class = @s tf2.class
scoreboard players operation @s tf2.class = $__item_id__ tf2.var
scoreboard players operation @s tf2.class %= 10 tf2.const
function tf2:class_select
execute if score $__item_id__ tf2.var matches 1..9 unless score @s[tag=!tf2.in_spawn] tf2.last_class = @s tf2.class run scoreboard players set @s tf2.health 0