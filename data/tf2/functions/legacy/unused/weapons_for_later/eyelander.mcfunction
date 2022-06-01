execute as @a if entity @s[scores={killS=1..},nbt={SelectedItem:{tag:{collectsHeads:1b}}}] run scoreboard players add @s headsCollected 1
execute as @a if entity @s[scores={killS=1..},nbt={SelectedItem:{tag:{collectsHeads:1b}}}] run effect give @s minecraft:instant_health 1 0 true
execute as @a if entity @s[scores={killS=1..},nbt={SelectedItem:{tag:{collectsHeads:1b}}}] run scoreboard players set @s killS 0

execute as @a if entity @s[scores={headsCollected=0}] run attribute @s minecraft:generic.max_health base set 30
execute as @a if entity @s[scores={headsCollected=0}] run attribute @s minecraft:generic.movement_speed base set 0.093

execute as @a if entity @s[scores={headsCollected=1}] run attribute @s minecraft:generic.max_health base set 33
execute as @a if entity @s[scores={headsCollected=1}] run attribute @s minecraft:generic.movement_speed base set 0.101

execute as @a if entity @s[scores={headsCollected=2}] run attribute @s minecraft:generic.max_health base set 36
execute as @a if entity @s[scores={headsCollected=2}] run attribute @s minecraft:generic.movement_speed base set 0.108

execute as @a if entity @s[scores={headsCollected=3}] run attribute @s minecraft:generic.max_health base set 39
execute as @a if entity @s[scores={headsCollected=3}] run attribute @s minecraft:generic.movement_speed base set 0.1155

execute as @a if entity @s[scores={headsCollected=4..}] run attribute @s minecraft:generic.max_health base set 42
execute as @a if entity @s[scores={headsCollected=4}] run attribute @s minecraft:generic.movement_speed base set 0.123

execute as @a if entity @s[scores={headsCollected=5..}] run attribute @s minecraft:generic.movement_speed base set 0.136

execute as @a if entity @s[scores={headsCollected=6..}] run effect give @s minecraft:health_boost 10 0 true
execute as @a if entity @s[scores={headsCollected=6..}] run scoreboard players set @s headsCollected 5




