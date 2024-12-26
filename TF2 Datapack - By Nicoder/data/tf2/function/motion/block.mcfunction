execute if score $mot.collision tf2.var matches 0 if block ~ ~ ~ #minecraft:slabs run function tf2:motion/slabs
execute if score $mot.collision tf2.var matches 0 if block ~ ~ ~ #minecraft:stairs run function tf2:motion/stairs
execute if score $mot.collision tf2.var matches 0 unless block ~ ~ ~ #tf2:motion_passable run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.collision tf2.var matches 1 run function tf2:__private__/if_else/45