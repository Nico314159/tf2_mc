scoreboard players set $_multiplier_ tf2.var -100
scoreboard players operation $_multiplier_ tf2.var *= @s tf2.age
scoreboard players operation $_multiplier_ tf2.var /= @s tf2.lifetime
scoreboard players add $_multiplier_ tf2.var 100
scoreboard players operation $_multiplier_ tf2.var > 50 tf2.const
scoreboard players operation $_multiplier_ tf2.var < 100 tf2.const