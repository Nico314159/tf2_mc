execute at @s run summon marker ~ ~ ~ {Tags:["return"]}
tp @e[type=marker,tag=return,limit=1,sort=nearest] @s
scoreboard players operation @e[type=marker,tag=return,limit=1] pairedOwnerUUID = @s pairedOwnerUUID
tp @s 307.30 63.00 58.27
