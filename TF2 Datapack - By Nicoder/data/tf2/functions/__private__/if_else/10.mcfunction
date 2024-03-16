execute store result score $_hammerUnits_ tf2.var run data get storage retina:output Distance 52.493
scoreboard players operation $_hammerUnits_ tf2.var < 1024 tf2.const
scoreboard players operation $_temp1_ tf2.var = $_hammerUnits_ tf2.var
scoreboard players operation $_temp1_ tf2.var *= $_hammerUnits_ tf2.var
scoreboard players operation $_temp1_ tf2.var *= 3 tf2.const
scoreboard players operation $_temp2_ tf2.var = $_hammerUnits_ tf2.var
scoreboard players operation $_temp2_ tf2.var *= $_hammerUnits_ tf2.var
scoreboard players operation $_temp2_ tf2.var *= $_hammerUnits_ tf2.var
scoreboard players operation $_temp2_ tf2.var *= 2 tf2.const
execute if score $_temp2_ tf2.var matches -2147483648 run scoreboard players remove $_temp2_ tf2.var 1
scoreboard players operation $_temp2_ tf2.var /= 1024 tf2.const
scoreboard players operation $_multiplier_ tf2.var = $_temp1_ tf2.var
scoreboard players operation $_multiplier_ tf2.var -= $_temp2_ tf2.var
scoreboard players operation $_multiplier_ tf2.var *= -100 tf2.const
scoreboard players operation $_multiplier_ tf2.var /= 1048576 tf2.const
scoreboard players add $_multiplier_ tf2.var 50
scoreboard players set $_temp3_ tf2.var 100
execute if score $_hammerUnits_ tf2.var matches ..511 run function tf2:__private__/if_else/12
scoreboard players operation $_multiplier_ tf2.var *= $_temp3_ tf2.var
scoreboard players operation $_multiplier_ tf2.var /= 100 tf2.const
scoreboard players add $_multiplier_ tf2.var 100
scoreboard players set __if_else__ tf2.var 1