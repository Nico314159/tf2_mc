execute if entity @s[tag=!cloaked, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:301}}},scores={rightClicks=1..,cloak=1..}] run tag @s add cloaked
execute if entity @s[tag=cloaked, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:301}}},scores={rightClicks=1..}] run scoreboard players set @s rightClicks 0
# execute if entity @s[tag=cloaked, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:301}}},scores={righterClickers=1..}] run tag @s remove cloaked
# execute if entity @s[tag=!cloaked, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:301}}},scores={righterClickers=1..}] run scoreboard players set @s righterClickers 0
execute if entity @s[tag=cloaked] if data entity @s SelectedItem unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run tag @s remove cloaked

effect give @a[tag=cloaked] minecraft:invisibility 1 0 true
effect clear @a[tag=!cloaked] minecraft:invisibility
tag @a[tag=cloaked,scores={cloak=..0}] remove cloaked

scoreboard players set @a[scores={cloak=..-1}] cloak 0
scoreboard players set @a[scores={cloak=601..}] cloak 600
scoreboard players remove @a[tag=cloaked] cloak 3
scoreboard players add @a[tag=!cloaked,scores={cloak=..599}] cloak 1