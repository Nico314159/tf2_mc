scoreboard players operation $uuid.0 tf2.var = @s tf2.uuid.0
scoreboard players operation $uuid.1 tf2.var = @s tf2.uuid.1
scoreboard players operation $uuid.2 tf2.var = @s tf2.uuid.2
scoreboard players operation $uuid.3 tf2.var = @s tf2.uuid.3
execute positioned as @s as @e[type=turtle] if score @s tf2.uuid.0 = $uuid.0 tf2.var if score @s tf2.uuid.1 = $uuid.1 tf2.var if score @s tf2.uuid.2 = $uuid.2 tf2.var if score @s tf2.uuid.3 = $uuid.3 tf2.var run tp @s 0 -1000 0