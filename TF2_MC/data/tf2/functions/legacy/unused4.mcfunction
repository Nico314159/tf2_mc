# Experiment with giving the stock shovel a debuff on hit effect. 
execute as @a[team=BLU,scores={shovelDamage=1..},nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] at @s run effect give @e[team=!BLU, sort=nearest, distance=0.1..2] minecraft:slowness 2 0
execute as @a[team=BLU,scores={shovelDamage=1..},nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] run scoreboard players set @s shovelDamage 0

execute as @a[team=RED,scores={shovelDamage=1..},nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] at @s run effect give @e[team=!RED, sort=nearest, distance=0.1..2.5] minecraft:slowness 2 0
execute as @a[team=RED,scores={shovelDamage=1..},nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] run scoreboard players set @s shovelDamage 0