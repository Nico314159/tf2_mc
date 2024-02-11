scoreboard players operation $temp tf2.var = @s tf2.drown_lost
scoreboard players operation $temp tf2.var < 10 tf2.const
scoreboard players operation @s tf2.health += $temp tf2.var
scoreboard players operation @s tf2.health < @s tf2.max_health
scoreboard players operation @s tf2.drown_lost -= $temp tf2.var
scoreboard players set @s tf2.time_surfaced 0