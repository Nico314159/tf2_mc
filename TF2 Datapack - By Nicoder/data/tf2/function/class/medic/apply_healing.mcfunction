execute if entity @p[tag=self,distance=10.287..] run return run function tf2:class/medic/disconnect
scoreboard players operation $heal_amount tf2.var = @s tf2.ticks_since_hurt
scoreboard players remove $heal_amount tf2.var 150
scoreboard players operation $heal_amount tf2.var > 50 tf2.const
scoreboard players operation $heal_amount tf2.var < 150 tf2.const
scoreboard players operation $heal_amount tf2.var *= 24 tf2.const
scoreboard players operation $heal_amount tf2.var /= 50 tf2.const
scoreboard players operation $fraction_numerator tf2.var = $heal_amount tf2.var
scoreboard players operation $fraction_numerator tf2.var %= 20 tf2.const
scoreboard players operation $heal_amount tf2.var /= 20 tf2.const
scoreboard players operation $t tf2.var = $__global__ 0008it54g_p_join
scoreboard players operation $t tf2.var %= 20 tf2.const
execute if score $t tf2.var < $fraction_numerator tf2.var run scoreboard players add $heal_amount tf2.var 1
scoreboard players operation @s tf2.health += $heal_amount tf2.var
scoreboard players operation @s tf2.health < @s tf2.max_health
scoreboard players add @p[tag=self] tf2.ubercharge 1
execute at @p[tag=self] anchored eyes facing entity @s eyes run function tf2:class/medic/particlefx