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
execute if score $t tf2.var < $fraction_numerator tf2.var run scoreboard players add $heal_amount tf2.var 1
scoreboard players operation @s tf2.health += $heal_amount tf2.var
scoreboard players operation @s tf2.health < @s tf2.max_health
scoreboard players add @p[tag=self,tag=!tf2.uber_source] tf2.ubercharge 1
execute if entity @p[tag=self,tag=tf2.uber_source] run tag @s add tf2.uber_patient
scoreboard players operation $id tf2.var = @s tf2.player.id
execute as @e[type=#tf2:player_like] if score @s tf2.heal_target = $id tf2.var run tag @s add tf2.search
execute unless entity @a[tag=tf2.search,tag=tf2.uber_source] run tag @s remove tf2.uber_patient
tag @e remove tf2.search
execute at @p[tag=self] anchored eyes facing entity @s eyes run function tf2:class/medic/particlefx