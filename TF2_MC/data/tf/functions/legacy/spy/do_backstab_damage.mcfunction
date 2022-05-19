gamerule showDeathMessages false
scoreboard players operation #temp custom_damage = @s maxHealth
scoreboard players operation #temp custom_damage *= 6 number
scoreboard players operation @s custom_damage = #temp custom_damage
scoreboard players add @a[tag=backstabber] killCount 0
scoreboard players add @a[tag=backstabber] backstabs 1
scoreboard players add @a[tag=backstabber] backstabs_temp 1
tellraw @a ["",{"selector":"@s"}," was backstabbed by ", {"selector":"@a[tag=backstabber,limit=1]"}]

