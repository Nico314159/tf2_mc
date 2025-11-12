function tf2:weapons/get_ammo
function tf2:hud/actionbar
function tf2:weapons/set_ammo
execute if entity @s[tag=tf2.disguised] run function tf2:class/spy/nametag/follow
execute if items entity @s[scores={tf2.is_invisible=0}] weapon.mainhand white_dye[custom_data~{cloak:"cloak"}] run function tf2:class/spy/cloak
execute if items entity @s[scores={tf2.is_invisible=1}] weapon.mainhand white_dye[custom_data~{cloak:"uncloak"}] run function tf2:class/spy/uncloak
scoreboard players add @s[scores={tf2.is_invisible=0,tf2.cloak=..599}] tf2.cloak 1
scoreboard players remove @s[scores={tf2.is_invisible=1}] tf2.cloak 3
execute if score @s[scores={tf2.is_invisible=1}] tf2.cloak matches ..0 run function tf2:class/spy/uncloak
attribute @s[tag=!tf2.disguised] minecraft:movement_speed modifier remove tf2:match_disguise_speed
function tf2:class/spy/inventory_lock
execute if score @s tf2.disguise matches 1.. run function tf2:class/spy/apply_disguise
execute if score @s tf2.disguise matches 1.. run scoreboard players reset @s tf2.disguise