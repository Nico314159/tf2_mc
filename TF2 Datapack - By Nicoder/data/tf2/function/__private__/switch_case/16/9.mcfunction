function tf2:weapons/get_ammo
function tf2:hud/actionbar
function tf2:weapons/set_ammo
function tf2:class/medic/inventory_lock
scoreboard players operation $regen_modulo tf2.var = $__global__ 0008it54g_p_join
scoreboard players operation $regen_modulo tf2.var %= 20 tf2.const
execute if score $regen_modulo tf2.var matches 0 run function tf2:class/medic/natural_regen
execute unless score @s tf2.current_slot matches 1 run scoreboard players reset @s tf2.heal_target
tag @s add self
execute if score @s tf2.current_slot matches 1 unless score @s tf2.attack_delay matches 1.. as @e[type=#tf2:player_like,tag=!self] if score @s tf2.player.id = @p[tag=self] tf2.heal_target at @s run function tf2:class/medic/apply_healing
tag @s remove self