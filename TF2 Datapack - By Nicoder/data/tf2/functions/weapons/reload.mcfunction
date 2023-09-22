scoreboard players operation $class tf2.var = @s tf2.class
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get $class tf2.var
function tf2:__private__/switch_case/2/select with storage tf2:__storage__
execute if predicate tf2:hide_ammo run return 0
execute if score @s tf2.reload_delay matches 1.. run return 0
function tf2:weapons/get_ammo
execute if score $_clip_ tf2.var >= $_maxClip_ tf2.var run return 0
execute if score $_ammo_ tf2.var matches 0 run return 0
execute store result score $_reloadType_ tf2.var run data get entity @s SelectedItem.tag.controls.reload
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get $_reloadType_ tf2.var
function tf2:__private__/switch_case/3/select with storage tf2:__storage__
function tf2:weapons/set_ammo
execute if score @s tf2.consecutive_reload matches 0 store result score $_reloadDelay_ tf2.var run data get entity @s SelectedItem.tag.attributes.reloadDelay[0] 20000
execute if score @s tf2.consecutive_reload matches 1 store result score $_reloadDelay_ tf2.var run data get entity @s SelectedItem.tag.attributes.reloadDelay[1] 20000
scoreboard players operation @s tf2.reload_delay += $_reloadDelay_ tf2.var
scoreboard players set @s tf2.consecutive_reload 1