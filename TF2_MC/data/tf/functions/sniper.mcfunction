execute if entity @s[scores={crossbow_shot=1..}] run execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function vdv_sniper:fire/start_ray
execute if entity @s[scores={crossbow_shot=1..}] run scoreboard players set @s crossbow_shot 0

execute as @a if score @s class matches 2 if entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:spyglass"}]}] if entity @s[nbt={SelectedItem:{}}] unless entity @s[nbt={SelectedItem:{id: "minecraft:crossbow"}}] run item replace entity @s weapon.offhand with air

execute as @a if score @s class matches 2 if entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:arrow"}]}] if entity @s[nbt={SelectedItem:{}}] unless entity @s[nbt={SelectedItem:{id: "minecraft:carrot_on_a_stick"}}] run item replace entity @s weapon.offhand with air

execute as @a if score @s class matches 2 if entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:arrow"}]}] if entity @s[nbt={SelectedItem:{id: "minecraft:carrot_on_a_stick"}}] run item replace entity @s weapon.offhand with air

execute as @a if score @s class matches 2 if entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:crossbow"}]}] unless entity @s[nbt={SelectedItem:{}}] unless entity @s[nbt={Inventory: [{Slot: 0b}]}] run clear @s spyglass
execute as @a if score @s class matches 2 if entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:crossbow"}]}] unless entity @s[nbt={SelectedItem:{}}] unless entity @s[nbt={Inventory: [{Slot: 0b}]}] run item replace entity @s weapon.mainhand with minecraft:spyglass{display:{Name:'[{"text":"Sniper Scope","italic":false}]'}} 1

execute as @a if score @s class matches 2 if entity @s[nbt={SelectedItem:{id: "minecraft:spyglass"}}] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:spyglass"}]}] run item replace entity @s weapon.mainhand with air

execute as @a if score @s class matches 2 if entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:crossbow"}]}] unless entity @s[nbt={SelectedItem:{id: "minecraft:spyglass"}}] run item replace entity @s hotbar.0 from entity @s weapon.offhand
execute as @a if score @s class matches 2 if entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:crossbow"}]}] unless entity @s[nbt={SelectedItem:{id: "minecraft:spyglass"}}] run item replace entity @s weapon.offhand with air

execute as @a if score @s class matches 2 if entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:spyglass"}]}] run item replace entity @s weapon.offhand with air


execute as @s if score @s attack_cooldown matches ..2 run scoreboard players add @s attack_cooldown 1
execute as @s if score @s attack_cooldown matches ..2 unless entity @s[nbt={SelectedItem:{id: "minecraft:carrot_on_a_stick"}}] run scoreboard players set @s attack_cooldown 3

execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:701}}},scores={rightClicks=1..,attack_cooldown=3..,smg_ammo=1..}] run function tf:smg
execute as @s at @s if entity @s[scores={rightClicks=1..}] run scoreboard players set @s rightClicks 0