execute as @s at @s store result entity @e[limit=1,type=minecraft:snowball,sort=nearest] Rotation[1] float 1 run scoreboard players get @s facing
execute as @s at @s store result entity @e[limit=1,type=minecraft:snowball,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[1]

execute as @s at @s store result entity @e[limit=1,type=minecraft:armor_stand,sort=nearest] Pose.Head[1] float 1 run scoreboard players get @s facing

# execute as @s at @s store result entity @e[limit=1,type=minecraft:armor_stand,sort=nearest] 
# Pose.Head[0] float 1 run data get entity @s Rotation[1]
