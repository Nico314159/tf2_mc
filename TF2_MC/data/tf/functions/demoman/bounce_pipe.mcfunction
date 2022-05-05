# tellraw @p "If you are seeing this, then tf:demoman/bounce_pipe has been run" 

# execute as @s at @s anchored eyes unless block ~1 ~ ~ #vdv_raycast:blocks run tellraw @p "hit positive X"
execute as @s at @s anchored eyes unless block ~1 ~ ~ #vdv_raycast:blocks run function tf:demoman/tag_pipe
execute as @s at @s anchored eyes unless block ~1 ~ ~ #vdv_raycast:blocks run scoreboard players set @s gracePeriod 0
execute as @s at @s anchored eyes unless block ~1 ~ ~ #vdv_raycast:blocks store result entity @s Motion[0] double -0.00005 run data get entity @s Motion[0] 10000
execute as @s at @s anchored eyes unless block ~1 ~ ~ #vdv_raycast:blocks store result entity @s Motion[2] double 0.00005 run data get entity @s Motion[2] 10000
execute as @s at @s if score @s motion_Y matches 0.. anchored eyes unless block ~1 ~ ~ #vdv_raycast:blocks store result entity @s Motion[1] double -0.00005 run data get entity @s Motion[1] 10000

# execute as @s at @s anchored eyes unless block ~-1 ~ ~ #vdv_raycast:blocks run tellraw @p "hit negative X"
execute as @s at @s anchored eyes unless block ~-1 ~ ~ #vdv_raycast:blocks run function tf:demoman/tag_pipe
execute as @s at @s anchored eyes unless block ~-1 ~ ~ #vdv_raycast:blocks run scoreboard players set @s gracePeriod 0
execute as @s at @s anchored eyes unless block ~-1 ~ ~ #vdv_raycast:blocks store result entity @s Motion[0] double -0.00005 run data get entity @s Motion[0] 10000
execute as @s at @s anchored eyes unless block ~-1 ~ ~ #vdv_raycast:blocks store result entity @s Motion[2] double 0.00005 run data get entity @s Motion[2] 10000
execute as @s at @s if score @s motion_Y matches 0.. anchored eyes unless block ~-1 ~ ~ #vdv_raycast:blocks store result entity @s Motion[1] double -0.0000075 run data get entity @s Motion[1] 100000

# execute as @s at @s anchored eyes unless block ~ ~ ~1 #vdv_raycast:blocks run tellraw @p "hit positive Z"
execute as @s at @s anchored eyes unless block ~ ~ ~1 #vdv_raycast:blocks run function tf:demoman/tag_pipe
execute as @s at @s anchored eyes unless block ~ ~ ~1 #vdv_raycast:blocks run scoreboard players set @s gracePeriod 0
execute as @s at @s anchored eyes unless block ~ ~ ~1 #vdv_raycast:blocks store result entity @s Motion[2] double -0.00005 run data get entity @s Motion[2] 10000
execute as @s at @s anchored eyes unless block ~ ~ ~1 #vdv_raycast:blocks store result entity @s Motion[0] double 0.00005 run data get entity @s Motion[0] 10000
execute as @s at @s if score @s motion_Y matches 0.. anchored eyes unless block ~ ~ ~1 #vdv_raycast:blocks store result entity @s Motion[1] double -0.00005 run data get entity @s Motion[1] 10000

# execute as @s at @s anchored eyes unless block ~ ~ ~-1 #vdv_raycast:blocks run tellraw @p "hit negative Z"
execute as @s at @s anchored eyes unless block ~ ~ ~-1 #vdv_raycast:blocks run function tf:demoman/tag_pipe
execute as @s at @s anchored eyes unless block ~ ~ ~-1 #vdv_raycast:blocks run scoreboard players set @s gracePeriod 0
execute as @s at @s anchored eyes unless block ~ ~ ~-1 #vdv_raycast:blocks store result entity @s Motion[2] double -0.00005 run data get entity @s Motion[2] 10000
execute as @s at @s anchored eyes unless block ~ ~ ~-1 #vdv_raycast:blocks store result entity @s Motion[0] double 0.00005 run data get entity @s Motion[0] 10000
execute as @s at @s if score @s motion_Y matches 0.. anchored eyes unless block ~ ~ ~-1 #vdv_raycast:blocks store result entity @s Motion[1] double -0.00005 run data get entity @s Motion[1] 10000

# execute as @s at @s anchored eyes unless block ~ ~1 ~ #vdv_raycast:blocks run tellraw @p "hit positive Y"
execute as @s at @s anchored eyes unless block ~ ~1 ~ #vdv_raycast:blocks run function tf:demoman/tag_pipe
execute as @s at @s anchored eyes unless block ~ ~1 ~ #vdv_raycast:blocks run scoreboard players set @s gracePeriod 0
execute as @s at @s if score @s motion_Y matches 0.. anchored eyes if entity @s[tag=bounced] unless block ~ ~1 ~ #vdv_raycast:blocks store result entity @s Motion[1] double -0.00005 run data get entity @s Motion[1] 10000

# execute as @s at @s anchored eyes if entity @s[tag=bounced, tag=!rolling] unless block ~ ~-0.5 ~ #vdv_raycast:blocks run tellraw @p "hit negative Y after bounce"
execute as @s at @s anchored eyes if entity @s[tag=bounced] unless block ~ ~-0.5 ~ #vdv_raycast:blocks run function tf:demoman/roll_tag_pipe
execute as @s at @s anchored eyes if entity @s[tag=bounced] unless block ~ ~-0.5 ~ #vdv_raycast:blocks run scoreboard players set @s gracePeriod 0
execute as @s at @s anchored eyes if entity @s[tag=bounced] unless block ~ ~-0.5 ~ #vdv_raycast:blocks store result entity @s Motion[1] double 1 run scoreboard players get @s gracePeriod
execute as @s at @s anchored eyes if entity @s[tag=bounced] unless block ~ ~-0.5 ~ #vdv_raycast:blocks store result entity @s Motion[0] double 0.0001 run data get entity @s Motion[0] 10000
execute as @s at @s anchored eyes if entity @s[tag=bounced] unless block ~ ~-0.5 ~ #vdv_raycast:blocks store result entity @s Motion[2] double 0.0001 run data get entity @s Motion[2] 10000
execute as @s at @s anchored eyes if entity @s[tag=bounced] unless block ~ ~-0.5 ~ #vdv_raycast:blocks run data modify entity @s NoGravity set value 0b

# execute as @s at @s anchored eyes unless entity @s[tag=bounced] unless block ~ ~-1 ~ #vdv_raycast:blocks run tellraw @p "hit negative Y before bounce"
execute as @s at @s anchored eyes unless entity @s[tag=bounced] unless block ~ ~-1 ~ #vdv_raycast:blocks run scoreboard players set @s gracePeriod 0
execute as @s at @s anchored eyes unless entity @s[tag=bounced] unless block ~ ~-1 ~ #vdv_raycast:blocks store result entity @s Motion[0] double 0.00005 run data get entity @s Motion[0] 10000
execute as @s at @s anchored eyes unless entity @s[tag=bounced] unless block ~ ~-1 ~ #vdv_raycast:blocks store result entity @s Motion[1] double -0.00005 run data get entity @s Motion[1] 10000
execute as @s at @s anchored eyes unless entity @s[tag=bounced] unless block ~ ~-1 ~ #vdv_raycast:blocks store result entity @s Motion[2] double 0.00005 run data get entity @s Motion[2] 10000
execute as @s at @s anchored eyes unless entity @s[tag=bounced] unless block ~ ~-1 ~ #vdv_raycast:blocks run function tf:demoman/tag_pipe

