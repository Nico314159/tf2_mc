execute store result score @s FlameAmmo run clear @s minecraft:blaze_powder 0

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:401}}},scores={FlameClicks=1..,FlameAmmo=1..}] at @s run function tf:fireshooter
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:401}}},scores={FlameClicks=1..}] run scoreboard players reset @s FlameClicks

execute if entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag:{CustomModelData:401}}]},scores={FlameAmmo=20..}] at @s run function tf:airshooter
execute if entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag:{CustomModelData:401}}]}] at @s run function tf:hand_swap

execute as @e[type=minecraft:arrow, nbt={damage:0.3d, pickup:0b, inGround:1b}] run data modify entity @s life set value 1199s