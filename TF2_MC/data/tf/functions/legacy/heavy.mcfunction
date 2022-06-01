# detect primary vs secondary
tag @s remove holding_primary
tag @s remove holding_secondary
execute as @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow",tag:{Enchantments:[{id: "minecraft:quick_charge"}]}}]}] run function tf:hand_swap
execute as @s unless entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id: "minecraft:quick_charge"}]}}},nbt=!{Inventory: [{Slot: -106b, id:"minecraft:crossbow",tag:{Enchantments:[{id: "minecraft:quick_charge"}]}}]}] run tag @s add holding_primary
execute as @s unless entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id: "minecraft:multishot"}]}}},nbt=!{Inventory: [{Slot: -106b, id:"minecraft:crossbow",tag:{Enchantments:[{id: "minecraft:multishot"}]}}]}] run tag @s add holding_secondary
execute as @s unless entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id: "minecraft:quick_charge"}]}}},nbt=!{Inventory: [{Slot: -106b, id:"minecraft:crossbow",tag:{Enchantments:[{id: "minecraft:quick_charge"}]}}]}] if entity @s[nbt={Inventory: [{Slot: 5b, id: "minecraft:arrow"}]}] run item replace entity @s hotbar.5 with air

# prevent switching weapons whilst reloading
execute as @s at @s if entity @s[tag=!holding_secondary] run scoreboard players set @s gracePeriod 0
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow"}]}, nbt={SelectedItem:{}}, nbt=!{SelectedItem:{id:"minecraft:arrow"}}] run scoreboard players set @s gracePeriod 0
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow"}]}, nbt={SelectedItem:{}}, nbt=!{SelectedItem:{id:"minecraft:arrow"}}] run item replace entity @s hotbar.1 from entity @s weapon.offhand 
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow"}]}, nbt={SelectedItem:{}}, nbt=!{SelectedItem:{id:"minecraft:arrow"}}] run item replace entity @s weapon.offhand with air
execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}},scores={gracePeriod=1..13}] run function tf:hand_swap
execute as @s if entity @s[tag=holding_secondary] if data entity @s SelectedItem.tag.ChargedProjectiles[0].tag.CustomPotionColor run give @s minecraft:tipped_arrow{CustomPotionColor:13421772,display:{Name:'{"text":"Arrow"}'}} 1
execute as @s if entity @s[tag=holding_secondary] if data entity @s SelectedItem.tag.ChargedProjectiles[0].tag.CustomPotionColor run item replace entity @s weapon.mainhand with minecraft:crossbow{display:{Name:'[{"text":"Shotgun"}]'},Enchantments:[{id:"minecraft:multishot",lvl:3},{id:"minecraft:power",lvl:1}],Unbreakable:1,HideFlags:6,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-1,Operation:2,UUID:[I;1029959365,1020243770,1012934280,1841497472]}]} 1
# execute as @s at @s if entity @s[nbt={Inventory: [{Slot: 0b, id:"minecraft:arrow"}]}, nbt={SelectedItem:{}}, nbt=!{SelectedItem:{id:"minecraft:arrow"}}] run item replace entity @s hotbar.0 with minecraft:crossbow{Unbreakable:1,display:{Name:'[{"text":"Shotgun"}]'},HideFlags:4,Enchantments:[{id:"minecraft:multishot",lvl:3},{id:"minecraft:power",lvl:1},{id:"minecraft:quick_charge",lvl:1}]} 1

# ammo display stuff
execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id: "minecraft:multishot"}]}}}] unless entity @s[nbt={Inventory: [{Slot: -106b}]}] unless entity @s[nbt={Inventory: [{Slot: 5b}]}] run function tf:legacy/heavy/fill_clip

# hide ammo display when not holding any weapons
execute as @s at @s if entity @s[tag=!holding_secondary] unless entity @s[nbt={SelectedItem:{id:"minecraft:arrow"}}] run item replace entity @s weapon.offhand with air
execute as @s at @s if entity @s[tag=!holding_secondary] unless entity @s[nbt={SelectedItem: {id:"minecraft:arrow"}}] run item replace entity @s hotbar.5 with air

# attacking
execute as @s if entity @s[tag=holding_secondary,scores={class=6}] if data entity @s SelectedItem.tag.ChargedProjectiles[0] unless entity @s[tag=keep_ammo] run scoreboard players remove @s secondaryClip 1
execute as @s if entity @s[tag=holding_secondary,scores={class=6}] if data entity @s SelectedItem.tag.ChargedProjectiles[0] run tag @s add keep_ammo
execute as @s[tag=holding_secondary,scores={class=6},tag=!reloading_shotgun] unless data entity @s SelectedItem.tag.ChargedProjectiles[0] run tag @s remove keep_ammo
execute as @s[tag=!holding_secondary] run tag @s add keep_ammo
execute as @s unless score @s class matches 6 run tag @s remove keep_ammo

# shotgun reload
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow",tag:{Enchantments:[{id: "minecraft:multishot"}]}}]},scores={secondaryClip=6}] run function tf:hand_swap
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow",tag:{Enchantments:[{id: "minecraft:multishot"}]}}]}] run tag @s add keep_ammo
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow",tag:{Enchantments:[{id: "minecraft:multishot"}], ChargedProjectiles:[{Count:1b}]}}]},scores={secondaryClip=5}] run function tf:hand_swap
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow",tag:{Enchantments:[{id: "minecraft:multishot"}]}}]},scores={secondaryAmmo=1..,secondaryClip=..5}] run tag @s add reloading_shotgun
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow",tag:{Enchantments:[{id: "minecraft:multishot"}]}}]}, scores={gracePeriod=..14}] run scoreboard players add @s gracePeriod 1
execute as @s at @s if entity @s[tag=holding_secondary, tag=reloading_shotgun, scores={gracePeriod=..14}] run scoreboard players add @s gracePeriod 1
execute as @s at @s if entity @s[tag=reloading_shotgun, scores={gracePeriod=13..}] run scoreboard players remove @s secondaryAmmo 1
execute as @s at @s if entity @s[tag=reloading_shotgun, scores={gracePeriod=13..}] run scoreboard players add @s secondaryClip 1
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow",tag:{Enchantments:[{id: "minecraft:multishot"}]}}]}, scores={gracePeriod=13..}] run item replace entity @s hotbar.1 from entity @s weapon.offhand 
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow",tag:{Enchantments:[{id: "minecraft:multishot"}]}}]},scores={class=6,gracePeriod=13..},tag=reloading_shotgun] run function tf:legacy/heavy/fill_clip
# execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow",tag:{Enchantments:[{id: "minecraft:multishot"}]}}]}, scores={gracePeriod=13..}] run item replace entity @s weapon.offhand with air
execute as @s at @s if entity @s[scores={gracePeriod=13..}] run scoreboard players set @s gracePeriod 0
execute as @s at @s if entity @s[tag=reloading_shotgun] run tag @s remove reloading_shotgun


