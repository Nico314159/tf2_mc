execute if entity @p[tag=self,distance=10.287..] run return run function tf2:class/medic/disconnect
execute store result score $base_heal tf2.var run data get entity @p[tag=self] Inventory[{Slot:1b}].components.minecraft:custom_data.attributes.heal.base
execute store result score $maxRamp tf2.var run data get entity @p[tag=self] Inventory[{Slot:1b}].components.minecraft:custom_data.attributes.heal.maxRamp 50
scoreboard players operation $heal_amount tf2.var = @s tf2.ticks_since_hurt
scoreboard players remove $heal_amount tf2.var 150
scoreboard players operation $heal_amount tf2.var > 50 tf2.const
scoreboard players operation $heal_amount tf2.var < $maxRamp tf2.var
scoreboard players operation $heal_amount tf2.var *= $base_heal tf2.var
scoreboard players operation $heal_amount tf2.var /= 50 tf2.const
scoreboard players operation $fraction_numerator tf2.var = $heal_amount tf2.var
scoreboard players operation $fraction_numerator tf2.var %= 20 tf2.const
scoreboard players operation $heal_amount tf2.var /= 20 tf2.const
scoreboard players operation $t tf2.var = $__global__ 0008it54g_p_join
scoreboard players operation $t tf2.var %= 20 tf2.const
scoreboard players operation $t tf2.var *= $fraction_numerator tf2.var
scoreboard players operation $t tf2.var %= 20 tf2.const
execute if score $t tf2.var < $fraction_numerator tf2.var run scoreboard players add $heal_amount tf2.var 1
scoreboard players operation @s tf2.health += $heal_amount tf2.var
execute if score @s tf2.health > @s tf2.max_health run tag @s add tf2.overheal
function tf2:player/clamp_health
scoreboard players operation $slow_threshold tf2.var = @s tf2.max_health
scoreboard players operation $slow_threshold tf2.var *= 1425 tf2.const
scoreboard players operation $slow_threshold tf2.var /= 1000 tf2.const
scoreboard players set $uber_gain tf2.var 4
scoreboard players operation $id tf2.var = @s tf2.player.id
execute store result score $medic_count tf2.var as @e[type=#tf2:player_like] if score @s tf2.heal_target = $id tf2.var
execute if score @s tf2.health >= $slow_threshold tf2.var run scoreboard players operation $uber_gain tf2.var /= 2 tf2.const
execute if score @s tf2.health >= $slow_threshold tf2.var if score $medic_count tf2.var matches 2.. run scoreboard players operation $uber_gain tf2.var /= 2 tf2.const
scoreboard players operation $current tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.in_use,tag=tf2.setup_time] if score $current tf2.batch_number = @s tf2.batch_number run scoreboard players operation $uber_gain tf2.var *= 3 tf2.const
scoreboard players operation @p[tag=self] tf2.ubercharge += $uber_gain tf2.var
execute if entity @p[tag=self,tag=tf2.uber_source] run function tf2:__private__/if_else/7
execute at @p[tag=self] anchored eyes facing entity @s eyes run function tf2:class/medic/particlefx