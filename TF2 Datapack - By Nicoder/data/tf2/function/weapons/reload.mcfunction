execute if entity @s[scores={tf2.class=1},tag=tf2.in_disguise_menu] run return run function tf2:class/spy/disguise_menu/toggle_team
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get @s tf2.class
function tf2:__private__/switch_case/4/select with storage tf2:__storage__
execute if predicate tf2:hide_ammo run return 0
execute if score @s tf2.reload_delay matches 1.. run return 0
function tf2:weapons/get_ammo
execute if score $_clip_ tf2.var >= $_maxClip_ tf2.var run return 0
execute if score $_ammo_ tf2.var matches 0 run return 0
data modify storage tf2:lookup item set from entity @s SelectedItem
execute store result score $_reloadType_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.controls.reload
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get $_reloadType_ tf2.var
function tf2:__private__/switch_case/5/select with storage tf2:__storage__
function tf2:weapons/set_ammo
execute if score @s tf2.consecutive_reload matches 0 store result score $_reloadDelay_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.reloadDelay[0] 20000
execute if score @s tf2.consecutive_reload matches 1 store result score $_reloadDelay_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.reloadDelay[1] 20000
scoreboard players operation @s tf2.reload_delay += $_reloadDelay_ tf2.var
scoreboard players set @s tf2.consecutive_reload 1
execute if score @s tf2.attack_delay matches ..0 run item modify entity @s weapon.mainhand tf2:load_crossbow
return 1