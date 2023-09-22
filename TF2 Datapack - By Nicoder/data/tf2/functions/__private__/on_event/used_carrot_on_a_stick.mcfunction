scoreboard players set @s on_event_1mqyp2x 0
execute store result score __item_id__ tf2.var run data get entity @s SelectedItem.tag.__item_id__
execute if score __item_id__ tf2.var matches 1.. run function tf2:__private__/item_create/found