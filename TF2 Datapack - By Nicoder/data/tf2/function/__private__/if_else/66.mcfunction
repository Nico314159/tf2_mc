scoreboard players set $do_effects tf2.var 0
execute if score @s tf2.health < @s tf2.max_health run scoreboard players set $do_effects tf2.var 1
execute if score @s tf2.primary_clip < @s tf2.primary_maxClip run scoreboard players set $do_effects tf2.var 1
execute if score @s tf2.primary_ammo < @s tf2.primary_maxAmmo run scoreboard players set $do_effects tf2.var 1
execute if score @s tf2.secondary_clip < @s tf2.secondary_maxClip run scoreboard players set $do_effects tf2.var 1
execute if score @s tf2.secondary_ammo < @s tf2.secondary_maxAmmo run scoreboard players set $do_effects tf2.var 1
function tf2:replenish_ammo_and_health
execute unless score $do_effects tf2.var matches 1.. run return 1
playsound tf2:pickup.resupply player @s ~ ~ ~ 1.5 0.8 0.2
clear @s