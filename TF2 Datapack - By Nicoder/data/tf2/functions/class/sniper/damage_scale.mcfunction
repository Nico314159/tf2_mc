scoreboard players operation $_multiplier_ tf2.var = @s tf2.time_scoped
scoreboard players remove $_multiplier_ tf2.var 26
scoreboard players operation $_multiplier_ tf2.var *= 5 tf2.const
scoreboard players add $_multiplier_ tf2.var 100
scoreboard players operation $_multiplier_ tf2.var > 100 tf2.const
scoreboard players operation $_multiplier_ tf2.var < 300 tf2.const
execute if data storage retina:input {HitEntityHead: true} run scoreboard players operation $_multiplier_ tf2.var *= 3 tf2.const