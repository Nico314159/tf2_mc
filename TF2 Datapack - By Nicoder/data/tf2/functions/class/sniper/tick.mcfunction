scoreboard players add @s[tag=!tf2.scoped] tf2.grace_period 1
scoreboard players set @s[scores={tf2.grace_period=10..}] tf2.time_scoped 0
tag @s[tag=tf2.scoped] remove tf2.scoped
function tf2:weapons/get_ammo
function tf2:weapons/actionbar
function tf2:weapons/set_ammo
function tf2:class/sniper/inventory_lock