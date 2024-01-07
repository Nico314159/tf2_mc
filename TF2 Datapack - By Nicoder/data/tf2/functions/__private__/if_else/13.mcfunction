scoreboard players operation $_multiplier_ tf2.var = @a[tag=retina.executing,limit=1] tf2.time_scoped
scoreboard players remove $_multiplier_ tf2.var 26
scoreboard players operation $_multiplier_ tf2.var *= 5 tf2.const
scoreboard players add $_multiplier_ tf2.var 100
scoreboard players operation $_multiplier_ tf2.var > 100 tf2.const
scoreboard players operation $_multiplier_ tf2.var < 300 tf2.const
execute if score $_hitHead_ tf2.var matches 1.. run scoreboard players operation $_multiplier_ tf2.var *= 3 tf2.const
scoreboard players set __if_else__ tf2.var 1