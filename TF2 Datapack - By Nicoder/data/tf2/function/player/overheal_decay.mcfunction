scoreboard players operation $decay_per_second tf2.var = @s tf2.max_health
scoreboard players operation $decay_per_second tf2.var /= 30 tf2.const
scoreboard players operation $t tf2.var = $__global__ xrroou1m8_p_join
scoreboard players operation $t tf2.var %= 20 tf2.const
scoreboard players operation $t tf2.var *= $decay_per_second tf2.var
scoreboard players operation $t tf2.var %= 20 tf2.const
execute if score $t tf2.var < $decay_per_second tf2.var run scoreboard players remove @s tf2.health 1
execute if score @s tf2.health <= @s tf2.max_health run tag @s remove tf2.overheal