execute store result entity @s Motion[0] double -0.00003 run data get entity @s Motion[0] 10000
execute store result entity @s Motion[2] double -0.00003 run data get entity @s Motion[2] 10000

execute if score @s motion_Y matches 0.. store result entity @s Motion[1] double -0.00003 run data get entity @s Motion[1] 10000

#execute positioned ~ ~-1.25 ~ if entity @p[distance=..1.5] store result entity @s Motion[1] double -0.0003 run say seal
# execute positioned ~ ~-1.25 ~ if entity @p[distance=..1] store result entity @s Motion[1] double -0.0003 run data get entity @s Motion[1] 10000
# execute if score @s motion_X matches -3..3 store result entity @s Motion[0] double -0.0005 run data get entity @s Motion[0] 10000

execute if score @s motion_X matches -4..4 store result entity @s Motion[1] double -0.0003 as @e[type=armor_stand,sort=nearest,limit=1] run function tf:demoman/delete_stickybomb
execute if score @s motion_X matches -4..4 store result entity @s Motion[1] double -0.0003 run kill @s
execute if score @s motion_Z matches -4..4 store result entity @s Motion[1] double -0.0003 as @e[type=armor_stand,sort=nearest,limit=1] run function tf:demoman/delete_stickybomb
execute if score @s motion_Z matches -4..4 store result entity @s Motion[1] double -0.0003 run kill @s

tag @s add bounced
scoreboard players set @s gracePeriod 0