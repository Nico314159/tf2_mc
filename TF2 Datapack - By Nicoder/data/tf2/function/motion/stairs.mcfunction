scoreboard players operation $mot.subblock_x tf2.var %= 2 tf2.const
scoreboard players operation $mot.subblock_y tf2.var %= 2 tf2.const
scoreboard players operation $mot.subblock_z tf2.var %= 2 tf2.const
execute if score $mot.subblock_y tf2.var matches 1 if block ~ ~ ~ #minecraft:stairs[half=top] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_y tf2.var matches 0 if block ~ ~ ~ #minecraft:stairs[half=bottom] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 0 if block ~ ~ ~ #minecraft:stairs[shape=straight,facing=west] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 1 if block ~ ~ ~ #minecraft:stairs[shape=straight,facing=east] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_z tf2.var matches 0 if block ~ ~ ~ #minecraft:stairs[shape=straight,facing=north] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_z tf2.var matches 1 if block ~ ~ ~ #minecraft:stairs[shape=straight,facing=south] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 0 if score $mot.subblock_z tf2.var matches 0 if block ~ ~ ~ #minecraft:stairs[shape=outer_left,facing=north] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 0 if score $mot.subblock_z tf2.var matches 0 if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=west] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 1 if score $mot.subblock_z tf2.var matches 0 if block ~ ~ ~ #minecraft:stairs[shape=outer_left,facing=east] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 1 if score $mot.subblock_z tf2.var matches 0 if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=north] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 0 if score $mot.subblock_z tf2.var matches 1 if block ~ ~ ~ #minecraft:stairs[shape=outer_left,facing=west] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 0 if score $mot.subblock_z tf2.var matches 1 if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=south] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 1 if score $mot.subblock_z tf2.var matches 1 if block ~ ~ ~ #minecraft:stairs[shape=outer_left,facing=south] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 1 if score $mot.subblock_z tf2.var matches 1 if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=east] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 0 if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=north] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_z tf2.var matches 0 if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=north] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 0 if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=west] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_z tf2.var matches 0 if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=west] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 1 if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=east] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_z tf2.var matches 0 if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=east] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 1 if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=north] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_z tf2.var matches 0 if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=north] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 0 if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=west] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_z tf2.var matches 1 if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=west] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 0 if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=south] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_z tf2.var matches 1 if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=south] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 1 if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=south] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_z tf2.var matches 1 if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=south] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_x tf2.var matches 1 if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=east] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_z tf2.var matches 1 if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=east] run scoreboard players set $mot.collision tf2.var 1