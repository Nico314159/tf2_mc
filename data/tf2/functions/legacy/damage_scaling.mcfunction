scoreboard players operation @s sniperDamage = @s timeScoped 
scoreboard players operation @s sniperDamage -= 5 number
scoreboard players operation @s sniperDamage /= 2 number

execute if score @s sniperDamage < @s minimum_damage run scoreboard players operation @s sniperDamage = @s minimum_damage
execute if score @s sniperDamage > @s maximum_damage run scoreboard players operation @s sniperDamage = @s maximum_damage

scoreboard players operation @s headshotDamage = @s sniperDamage
scoreboard players operation @s headshotDamage *= 3 number