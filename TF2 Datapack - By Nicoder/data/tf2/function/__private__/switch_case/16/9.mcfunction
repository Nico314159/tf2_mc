function tf2:weapons/get_ammo
function tf2:hud/actionbar
function tf2:weapons/set_ammo
function tf2:class/medic/inventory_lock
execute positioned ~-3 ~-1 ~-3 unless entity @e[type=item_display,tag=tf2.control_point,dx=5,dy=1,dz=5] run title @s title ""
title @s[tag=!tf2.can_cap] title ""
scoreboard players operation @s tf2.ubercharge < 800 tf2.const
scoreboard players operation $percent_ubercharge tf2.var = @s tf2.ubercharge
scoreboard players operation $percent_ubercharge tf2.var /= 8 tf2.const
title @s subtitle ["",{"score":{"name":"$percent_ubercharge","objective":"tf2.var"},"type":"score"},{"text":"% \u00dcbercharge"}]
scoreboard players operation $regen_modulo tf2.var = $__global__ 0008it54g_p_join
scoreboard players operation $regen_modulo tf2.var %= 20 tf2.const
execute if score $regen_modulo tf2.var matches 0 run function tf2:class/medic/natural_regen
execute unless score @s tf2.current_slot matches 1 run scoreboard players reset @s tf2.heal_target
scoreboard players remove @s[tag=tf2.uber_source] tf2.ubercharge 5
tag @s[scores={tf2.ubercharge=..0}] remove tf2.uber_source
tag @s add self
execute if score @s tf2.current_slot matches 1 unless score @s tf2.attack_delay matches 1.. as @e[type=#tf2:player_like,tag=!self] if score @s tf2.player.id = @p[tag=self] tf2.heal_target at @s run function tf2:class/medic/apply_healing
tag @s remove self