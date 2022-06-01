# detect primary vs secondary
tag @s remove holding_primary
tag @s remove holding_secondary
execute as @s unless entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow"}},nbt=!{Inventory: [{Slot: -106b, id:"minecraft:crossbow"}]}] run tag @s add holding_primary
execute as @s unless entity @s[nbt=!{SelectedItem:{id:"minecraft:bow"}}, nbt=!{Inventory: [{Slot: -106b, id:"minecraft:bow"}]}] run tag @s add holding_secondary

# prevent switching weapons whilst reloading
execute as @s at @s if entity @s[tag=!holding_primary] run scoreboard players set @s gracePeriod 0
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow"}]}, nbt={SelectedItem:{}}, nbt=!{SelectedItem:{id:"minecraft:arrow"}}] run scoreboard players set @s gracePeriod 0
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow"}]}, nbt={SelectedItem:{}}, nbt=!{SelectedItem:{id:"minecraft:arrow"}}] run item replace entity @s hotbar.0 from entity @s weapon.offhand 
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow"}]}, nbt={SelectedItem:{}}, nbt=!{SelectedItem:{id:"minecraft:arrow"}}] run item replace entity @s weapon.offhand with air
execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}},scores={gracePeriod=1..13}] run function tf:legacy/hand_swap
# execute as @s at @s if entity @s[nbt={Inventory: [{Slot: 0b, id:"minecraft:arrow"}]}, nbt={SelectedItem:{}}, nbt=!{SelectedItem:{id:"minecraft:arrow"}}] run item replace entity @s hotbar.0 with minecraft:crossbow{Unbreakable:1,display:{Name:'[{"text":"Shotgun"}]'},HideFlags:4,Enchantments:[{id:"minecraft:multishot",lvl:3},{id:"minecraft:power",lvl:1},{id:"minecraft:quick_charge",lvl:1}]} 1

# ammo display stuff
execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] unless entity @s[nbt={Inventory: [{Slot: -106b}]}] unless entity @s[nbt={Inventory: [{Slot: 8b}]}] run function tf:legacy/engineer/fill_clip
execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:bow"}}] unless entity @s[nbt={Inventory: [{Slot: -106b}]}] unless entity @s[nbt={Inventory: [{Slot: 8b}]}] run function tf:legacy/engineer/fill_clip

execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] unless entity @s[nbt=!{Inventory: [{Slot: -106b, tag:{value:270000}}]},nbt=!{Inventory: [{Slot: 8b, tag:{CustomModelData:270000}}]}] run function tf:legacy/engineer/fill_clip
execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:bow"}}] unless entity @s[nbt=!{Inventory: [{Slot: -106b, tag:{value:260000}}]},nbt=!{Inventory: [{Slot: 8b, tag:{CustomModelData:260000}}]}] run function tf:legacy/engineer/fill_clip

# hide ammo display when not holding any weapons
execute as @s at @s if entity @s[tag=!holding_primary,tag=!holding_secondary] unless entity @s[nbt={SelectedItem:{id:"minecraft:arrow"}}] unless entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:warped_fungus_on_a_stick"}]}] run item replace entity @s weapon.offhand with air
execute as @s at @s if entity @s[tag=!holding_primary,tag=!holding_secondary] unless entity @s[nbt={SelectedItem: {id:"minecraft:arrow"}}] unless entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:warped_fungus_on_a_stick"}]}] run item replace entity @s hotbar.8 with air

# attacking

# execute as @s if entity @s[scores={crossbow_shot=1..}] run scoreboard players remove @s primaryClip 1
# execute as @s if entity @s[scores={crossbow_shot=1..,class=8}] run scoreboard players set @s crossbow_shot 0
execute as @s if entity @s[tag=holding_primary,scores={class=8}] if data entity @s SelectedItem.tag.ChargedProjectiles[0] unless entity @s[tag=keep_ammo] run scoreboard players remove @s primaryClip 1
execute as @s if entity @s[tag=holding_primary,scores={class=8}] if data entity @s SelectedItem.tag.ChargedProjectiles[0] run tag @s add keep_ammo
execute as @s[tag=holding_primary,scores={class=8},tag=!reloading_shotgun] unless data entity @s SelectedItem.tag.ChargedProjectiles[0] run tag @s remove keep_ammo
execute as @s[tag=!holding_primary] run tag @s add keep_ammo
execute as @s unless score @s class matches 8 run tag @s remove keep_ammo

execute as @a if entity @s[scores={bow_shot=1..}] run scoreboard players remove @s secondaryClip 1
execute as @a if entity @s[scores={bow_shot=1..,class=8}] run scoreboard players set @s bow_shot 0
execute as @s if entity @s[nbt={SelectedItem:{id:"minecraft:bow"}},scores={secondaryClip=..0}] run item replace entity @s weapon.offhand with air

# pistol reload
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:bow"}]},scores={secondaryAmmo=1..,secondaryClip=..11}] run tag @s add reloading_pistol 
execute as @s at @s if entity @s[tag=reloading_pistol] run scoreboard players set @s reloadAmount 12
execute as @s at @s if entity @s[tag=reloading_pistol] run scoreboard players operation @s reloadAmount -= @s secondaryClip
execute as @s at @s if entity @s[tag=reloading_pistol] run scoreboard players operation @s reloadAmount < @s secondaryAmmo
execute as @s at @s if entity @s[tag=reloading_pistol] run scoreboard players operation @s secondaryAmmo -= @s reloadAmount
execute as @s at @s if entity @s[tag=reloading_pistol] run scoreboard players operation @s secondaryClip += @s reloadAmount
execute as @s at @s if entity @s[tag=reloading_pistol] run scoreboard players reset @s reloadAmount
execute as @s at @s if entity @s[tag=reloading_pistol] run tag @s remove reloading_pistol
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:bow"}]}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand 
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:bow"}]},scores={class=8}] run function tf:legacy/engineer/fill_clip
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:bow"}]}] run item replace entity @s weapon.offhand with air


# shotgun reload
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow"}]},scores={primaryClip=6}] run function tf:legacy/hand_swap
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow"}]}] run tag @s add keep_ammo
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow", tag:{ChargedProjectiles:[{Count:1b}]}}]},scores={primaryClip=5}] run function tf:legacy/hand_swap
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow"}]},scores={primaryAmmo=1..,primaryClip=..5}] run tag @s add reloading_shotgun
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow"}]}, scores={gracePeriod=..14}] run scoreboard players add @s gracePeriod 1
execute as @s at @s if entity @s[tag=holding_primary, tag=reloading_shotgun, scores={gracePeriod=..14}] run scoreboard players add @s gracePeriod 1
execute as @s at @s if entity @s[tag=reloading_shotgun, scores={gracePeriod=13..}] run scoreboard players remove @s primaryAmmo 1
execute as @s at @s if entity @s[tag=reloading_shotgun, scores={gracePeriod=13..}] run scoreboard players add @s primaryClip 1
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow"}]}, scores={gracePeriod=13..}] run item replace entity @s hotbar.0 from entity @s weapon.offhand 
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow"}]},scores={class=8,gracePeriod=13..},tag=reloading_shotgun] run function tf:legacy/engineer/fill_clip
# execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:crossbow"}]}, scores={gracePeriod=13..}] run item replace entity @s weapon.offhand with air
execute as @s at @s if entity @s[scores={gracePeriod=13..}] run scoreboard players set @s gracePeriod 0
execute as @s at @s if entity @s[tag=reloading_shotgun] run tag @s remove reloading_shotgun


# construction PDA
execute as @s if entity @s[nbt={Inventory:[{Slot: -106b, id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData: 100}}]}] run function tf:legacy/engineer/hotbars/construction_pda
