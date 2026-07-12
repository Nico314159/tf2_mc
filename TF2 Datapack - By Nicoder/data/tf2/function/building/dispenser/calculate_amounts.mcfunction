scoreboard players operation $tick_timer tf2.var = $__global__ xrroou1m8_p_join
scoreboard players operation $tick_timer tf2.var %= 4 tf2.const
execute store success score $health tf2.var if score $tick_timer tf2.var <= @s tf2.building.level
execute store result score $ammo tf2.var store result score $cloak tf2.var run scoreboard players set $metal tf2.var 0
scoreboard players operation $second_timer tf2.var = $__global__ xrroou1m8_p_join
scoreboard players operation $second_timer tf2.var %= 20 tf2.const
execute unless score $second_timer tf2.var matches 0 run return 1
scoreboard players operation $ammo tf2.var = @s tf2.building.level
scoreboard players add $ammo tf2.var 1
scoreboard players operation $ammo tf2.var *= 10 tf2.const
scoreboard players operation $metal tf2.var = @s tf2.building.level
scoreboard players add $metal tf2.var 3
scoreboard players operation $metal tf2.var *= 10 tf2.const
scoreboard players operation $5_second_timer tf2.var = $__global__ xrroou1m8_p_join
scoreboard players operation $5_second_timer tf2.var %= 100 tf2.const
execute unless score $5_second_timer tf2.var matches 0 run return 1
scoreboard players operation $cloak tf2.var = @s tf2.building.level
scoreboard players operation $cloak tf2.var *= 5 tf2.const
return 1