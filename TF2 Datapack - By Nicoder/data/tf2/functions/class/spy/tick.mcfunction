function tf2:weapons/get_ammo
function tf2:hud/actionbar
function tf2:weapons/set_ammo
execute if items entity @s[scores={tf2.is_invisible=0}] weapon.mainhand clay_ball[custom_data~{cloak: 'cloak'}] run function tf2:class/spy/cloak
execute if items entity @s[scores={tf2.is_invisible=1}] weapon.mainhand clay_ball[custom_data~{cloak: 'uncloak'}] run function tf2:class/spy/uncloak
scoreboard players add @s[scores={tf2.is_invisible=0,tf2.cloak=..599}] tf2.cloak 1
scoreboard players remove @s[scores={tf2.is_invisible=1}] tf2.cloak 3
execute if score @s[scores={tf2.is_invisible=1}] tf2.cloak matches ..0 run function tf2:class/spy/uncloak
execute if entity @s[tag=tf2.disguised] run return run function tf2:class/spy/fake_inventory_lock
function tf2:class/spy/inventory_lock