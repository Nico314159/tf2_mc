scoreboard players add @a[tag=!charging,nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag:{CustomModelData:101}}]}] charge 1
execute as @a[tag=!charging, scores={carrotsUsed=1..}] store result score @s startRotationY run data get entity @s Rotation[0]

tag @a[scores={charge=1000..,carrotsUsed=1..},nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag:{CustomModelData:101}}]}] add charging
execute as @a[scores={charge=1000..,carrotsUsed=1..},nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag:{CustomModelData:101}}]}] run scoreboard players set @s carrotsUsed 0
execute as @a[scores={charge=..999,carrotsUsed=1..}] run scoreboard players set @s carrotsUsed 0

execute as @a[tag=charging] run effect give @s minecraft:speed 1 8 true
scoreboard players remove @a[tag=charging] charge 33

effect clear @a[scores={charge=..0}, tag=charging] minecraft:speed
tag @a[scores={charge=..0}] remove charging

execute as @a[scores={charge=..-1}] run scoreboard players set @s charge 0
execute as @a[scores={charge=1001..}] run scoreboard players set @s charge 1000

execute as @a[tag=charging, scores={charge=..950}] store result score @s chargeRotationY run data get entity @s Rotation[0]
execute as @a[tag=charging, scores={charge=..950}] run scoreboard players operation @s differenceY = @s chargeRotationY
execute as @a[tag=charging, scores={charge=..950}] run scoreboard players operation @s differenceY -= @s startRotationY
execute as @a[scores={differenceY=..-1, charge=..950}, tag=charging] run scoreboard players operation @s differenceY *= #NegativeOne differenceY

effect clear @a[scores={differenceY=5..170}] minecraft:speed
tag @a[scores={differenceY=5..170}] remove charging

execute as @a[tag=!charging] run scoreboard players reset @s startRotationY
execute as @a[tag=!charging] run scoreboard players reset @s chargeRotationY
execute as @a[tag=!charging] run scoreboard players reset @s differenceY
execute as @a[scores={charge=900..}] run scoreboard players reset @s differenceY


execute as @a[scores={meleeDamage=1..},tag=charging,nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run scoreboard players set @s charge 0
execute as @a[scores={meleeDamage=1..},tag=charging,nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run scoreboard players set @s meleeDamage 0
execute as @a[scores={meleeDamage=1..},tag=charging,nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] run scoreboard players set @s charge 0
execute as @a[scores={meleeDamage=1..},tag=charging,nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] run scoreboard players set @s meleeDamage 0


execute as @a[scores={meleeDamage=1..}] run scoreboard players set @s meleeDamage 0
execute as @a[scores={meleeDamage=1..},tag=charging] run scoreboard players set @s meleeDamage 0


execute as @a[scores={charge=..400},tag=charging] run effect give @s minecraft:strength 1 1 true
execute as @a[scores={charge=..750},tag=charging] run effect give @s minecraft:strength 1 0 true
effect clear @a[tag=charging,nbt={ActiveEffects:[{Id:2b}]}] minecraft:slowness


execute as @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag:{CustomModelData:101}}]}] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{"color":16777215},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"legs",Amount:0,Operation:0,UUID:[I;1061708852,1067851919,1056097284,1076159263]}],Enchantments:[{id:"minecraft:fire_protection",lvl:6},{id:"minecraft:blast_protection",lvl:3}],Unbreakable:1,HideFlags:71} 1