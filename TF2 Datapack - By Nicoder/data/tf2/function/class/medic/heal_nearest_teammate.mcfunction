scoreboard players operation $current tf2.batch_number = @s tf2.batch_number
scoreboard players operation $current tf2.team = @s tf2.team
tag @s add self
execute as @a[tag=!self,distance=..8.572] if score @s tf2.batch_number = $current tf2.batch_number if score @s tf2.team = $current tf2.team run tag @s add heal_target
tag @s remove self
execute unless entity @a[tag=heal_target] run return fail
scoreboard players operation $heal_amount tf2.var = @p[tag=heal_target] tf2.ticks_since_hurt
scoreboard players remove $heal_amount tf2.var 150
scoreboard players operation $heal_amount tf2.var > 50 tf2.const
scoreboard players operation $heal_amount tf2.var < 150 tf2.const
scoreboard players operation $heal_amount tf2.var *= 24 tf2.const
scoreboard players operation $heal_amount tf2.var /= 50 tf2.const
scoreboard players operation $t tf2.var = $__global__ 0008it54g_p_join
scoreboard players operation $t tf2.var %= 20 tf2.const
execute if score $t tf2.var matches 0 run scoreboard players operation @p[tag=heal_target] tf2.health += $heal_amount tf2.var
scoreboard players operation @p[tag=heal_target] tf2.health < @p[tag=heal_target] tf2.max_health
tag @a remove heal_target