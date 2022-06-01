function tf:legacy/hand_swap

# sentry
execute as @s if entity @s[team=RED] run item replace entity @s hotbar.0 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Sentry","italic": false}]'},CustomModelData:100110}
execute as @s if entity @s[team=BLU] run item replace entity @s hotbar.0 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Sentry","italic": false}]'},CustomModelData:100210}
execute as @s if entity @s[team=GRN] run item replace entity @s hotbar.0 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Sentry","italic": false}]'},CustomModelData:100310}
execute as @s if entity @s[team=YLW] run item replace entity @s hotbar.0 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Sentry","italic": false}]'},CustomModelData:100410}

# dispenser
execute as @s if entity @s[team=RED] run item replace entity @s hotbar.1 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Dispenser","italic": false}]'},CustomModelData:100120}
execute as @s if entity @s[team=BLU] run item replace entity @s hotbar.1 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Dispenser","italic": false}]'},CustomModelData:100220}
execute as @s if entity @s[team=GRN] run item replace entity @s hotbar.1 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Dispenser","italic": false}]'},CustomModelData:100320}
execute as @s if entity @s[team=YLW] run item replace entity @s hotbar.1 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Dispenser","italic": false}]'},CustomModelData:100420}

# entrance
execute as @s if entity @s[team=RED] run item replace entity @s hotbar.2 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Teleporter Entrance","italic": false}]'},CustomModelData:100130}
execute as @s if entity @s[team=BLU] run item replace entity @s hotbar.2 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Teleporter Entrance","italic": false}]'},CustomModelData:100230}
execute as @s if entity @s[team=GRN] run item replace entity @s hotbar.2 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Teleporter Entrance","italic": false}]'},CustomModelData:100330}
execute as @s if entity @s[team=YLW] run item replace entity @s hotbar.2 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Teleporter Entrance","italic": false}]'},CustomModelData:100430}

# exit
execute as @s if entity @s[team=RED] run item replace entity @s hotbar.3 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Teleporter Exit","italic": false}]'},CustomModelData:100140}
execute as @s if entity @s[team=BLU] run item replace entity @s hotbar.3 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Teleporter Exit","italic": false}]'},CustomModelData:100240}
execute as @s if entity @s[team=GRN] run item replace entity @s hotbar.3 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Teleporter Exit","italic": false}]'},CustomModelData:100340}
execute as @s if entity @s[team=YLW] run item replace entity @s hotbar.3 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Teleporter Exit","italic": false}]'},CustomModelData:100440}

# close menu
execute as @s run item replace entity @s hotbar.8 with minecraft:barrier{display:{Name:'[{"text":"Close Menu","italic": false}]'},value:100}

tag @s add construction_pda_hotbar