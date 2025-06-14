scoreboard players set @s tf2.coas 0
execute unless data entity @s SelectedItem.components{"minecraft:item_model":"tf2:misc/choose_class"} run return fail
scoreboard players set __if_else__ tf2.var 0
execute unless data entity @s SelectedItem.components.minecraft:custom_model_data run function tf2:__private__/if_else/91
execute if score __if_else__ tf2.var matches 0 if score @s tf2.last_class matches 5 run function tf2:class/demoman/erase_all_stickybombs
data modify storage tf2:vars class_name set from entity @s SelectedItem.components.minecraft:custom_model_data.strings[0]
function tf2:class_select
attribute @s minecraft:jump_strength modifier remove tf2:no_jump
attribute @s minecraft:movement_speed modifier remove tf2:no_move
execute if score @s tf2.class matches 1..9 unless score @s tf2.last_class = @s tf2.class if entity @s[tag=!tf2.in_spawn] run function tf2:player/death