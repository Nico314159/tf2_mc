execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{isMedigun:1b}}}] run scoreboard players add @s uberMeter 1
execute if score @s uberMeter matches ..0 run scoreboard players set @s uberMeter 0
execute if score @s uberMeter matches 801.. run scoreboard players set @s uberMeter 800

execute if score @s uberMeter matches ..7 run tag @s remove using_uber
execute if score @s uberMeter matches ..7 run effect clear @s minecraft:resistance
function tf:medic/display_uber

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{isMedigun:1b}}},scores={rightClicks=1..,uberMeter=800..}] at @s run function tf:medic/activate_uber

execute if entity @s[tag=using_uber] run scoreboard players remove @s uberMeter 15

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{isMedigun:1b}}},scores={rightClicks=1..}] run scoreboard players set @s rightClicks 0

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{isMedigun:1b}}}] at @s run function tf:medic/stock_heal

execute if entity @s[nbt=!{ActiveEffects:[{Id:10b}]}] run effect give @s minecraft:regeneration 3 1 true 

execute as @e[type=minecraft:arrow, nbt={Color:13421772, damage: 2.0d}] run data modify entity @s damage set value 0.5d

