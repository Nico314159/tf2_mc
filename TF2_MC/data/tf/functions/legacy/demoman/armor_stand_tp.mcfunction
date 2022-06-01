scoreboard players operation #temp projectileUUID = @s projectileUUID
execute as @e[type=armor_stand] if score #temp projectileUUID = @s projectileUUID run tag @s add teleport
execute at @s as @e[type=armor_stand,tag=teleport] unless entity @s[tag=!red_stickybomb,tag=!blu_stickybomb] run tp @s ~ ~-1.2 ~
execute at @s as @e[type=armor_stand,tag=teleport,tag=!rolling] if entity @s[tag=!red_stickybomb,tag=!blu_stickybomb] run tp @s ~ ~-1.4 ~
execute at @s as @e[type=armor_stand,tag=teleport,tag=rolling] if entity @s[tag=!red_stickybomb,tag=!blu_stickybomb] run tp @s ~ ~-1.5 ~

execute as @e[type=armor_stand] run tag @s remove teleport
