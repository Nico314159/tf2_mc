execute as @e[type=item,tag=!tf2.map_item,sort=nearest,limit=1] run kill @s
function tf2:__private__/switch_case/17
execute if predicate tf2:hide_ammo run return 0
execute if score @s tf2.reload_delay matches 1.. run return 0
function tf2:weapons/get_ammo
execute if score $_clip_ tf2.var >= $_maxClip_ tf2.var run return 0
execute if score $_ammo_ tf2.var matches 0 run return 0
execute store result score $_reloadType_ tf2.var run data get entity @s SelectedItem.tag.controls.reload
function tf2:__private__/switch_case/22
function tf2:weapons/set_ammo
execute if score @s tf2.consecutive_reload matches 0 store result score $_reloadDelay_ tf2.var run data get entity @s SelectedItem.tag.attributes.reloadDelay[0] 20000
execute if score @s tf2.consecutive_reload matches 1 store result score $_reloadDelay_ tf2.var run data get entity @s SelectedItem.tag.attributes.reloadDelay[1] 20000
scoreboard players operation @s tf2.reload_delay += $_reloadDelay_ tf2.var
scoreboard players set @s tf2.consecutive_reload 1