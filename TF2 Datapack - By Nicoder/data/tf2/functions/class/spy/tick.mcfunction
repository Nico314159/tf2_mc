function tf2:weapons/get_ammo
function tf2:hud/actionbar
function tf2:weapons/set_ammo
execute if items entity @s[scores={tf2.is_invisible=0}] weapon.mainhand clay_ball[custom_data~{cloak: 'cloak'}] run function tf2:class/spy/cloak
execute if items entity @s[scores={tf2.is_invisible=1}] weapon.mainhand clay_ball[custom_data~{cloak: 'uncloak'}] run function tf2:class/spy/uncloak
function tf2:class/spy/inventory_lock