scoreboard players operation $heal_amount tf2.var = @s tf2.ticks_since_hurt
scoreboard players remove $heal_amount tf2.var 150
scoreboard players operation $heal_amount tf2.var > 50 tf2.const
scoreboard players operation $heal_amount tf2.var < 150 tf2.const
scoreboard players operation $heal_amount tf2.var *= 24 tf2.const
scoreboard players operation $heal_amount tf2.var /= 50 tf2.const
scoreboard players operation $t tf2.var = $__global__ 0008it54g_p_join
scoreboard players operation $t tf2.var %= 20 tf2.const
execute if score $t tf2.var matches 0 run scoreboard players operation @s tf2.health += $heal_amount tf2.var
scoreboard players operation @s tf2.health < @s tf2.max_health