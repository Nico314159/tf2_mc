tag @s remove tf2.in_disguise_menu
scoreboard players set $error tf2.var 0
execute unless score @s tf2.class matches 1 store result score $error tf2.var run tellraw @s {"text":"ERROR: You can't use disguises if you're not playing as the Spy.","color":"yellow","italic":true,"type":"text"}
data modify storage tf2:disguise class set from entity @s SelectedItem.components.minecraft:custom_model_data.strings[0]
data modify storage tf2:disguise team set from entity @s SelectedItem.components.minecraft:custom_model_data.strings[1]
execute if data storage tf2:disguise {team:"red"} run scoreboard players set @s tf2.disguise.team 1
execute if data storage tf2:disguise {team:"blu"} run scoreboard players set @s tf2.disguise.team 2
execute if data storage tf2:disguise {class:"spy"} if score @s tf2.disguise.team = @s tf2.team run scoreboard players set $error tf2.var 1
attribute @s minecraft:movement_speed modifier remove tf2:match_disguise_speed
execute if score $error tf2.var matches 1.. run return run tag @s remove tf2.disguised
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get @s tf2.disguise.class
function tf2:__private__/switch_case/0/select with storage tf2:__storage__
tag @s add self
execute if entity @s[tag=!tf2.disguised,scores={tf2.is_invisible=0}] run function tf2:class/spy/thick_smoke
execute if entity @s[tag=tf2.disguised,scores={tf2.is_invisible=0}] run function tf2:class/spy/light_smoke
function tf2:class/spy/title_image
execute unless score @s tf2.team = @s tf2.disguise.team at @s anchored eyes run function tf2:class/spy/nametag/create
tag @s remove self
function tf2:__private__/anonymous/2 with storage tf2:disguise
tag @s add tf2.disguised