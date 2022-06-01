# particle minecraft:electric_spark ~ ~1.5 ~ 0.1 0.1 0.1 0.1 50
scoreboard players operation #searchTwo pairedOwnerUUID = @s pairedOwnerUUID
execute as @a if score #searchTwo pairedOwnerUUID = @s pairedOwnerUUID run scoreboard players remove @s activeBombs 1
execute at @s if entity @s[tag=deployed_stickybomb] as @e[type=chicken,tag=stickybomb_marker,sort=nearest,limit=1] run kill @s
kill @s
