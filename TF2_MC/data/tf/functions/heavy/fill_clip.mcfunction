execute if entity @s[nbt={SelectedItem:{id:"minecraft:arrow"}}] run item replace entity @s weapon.mainhand with air
item replace entity @s hotbar.5 with air


# shotgun - clip
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=6}] run item replace entity @s weapon.offhand with minecraft:arrow{value:280000} 6
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=5}] run item replace entity @s weapon.offhand with minecraft:arrow{value:280000} 5
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=4}] run item replace entity @s weapon.offhand with minecraft:arrow{value:280000} 4
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=3}] run item replace entity @s weapon.offhand with minecraft:arrow{value:280000} 3
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=2}] run item replace entity @s weapon.offhand with minecraft:arrow{value:280000} 2
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=1}] run item replace entity @s weapon.offhand with minecraft:arrow{value:280000} 1

execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=..0}] run item replace entity @s weapon.offhand with air

# shotgun - ammo
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=32}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 32
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=31}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 31
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=30}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 30
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=29}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 29
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=28}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 28
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=27}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 27
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=26}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 26
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=25}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 25
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=24}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 24
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=23}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 23
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=22}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 22
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=21}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 21
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=20}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 20
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=20}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 20
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=19}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 19
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=18}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 18
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=17}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 17
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=16}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 16
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=15}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 15
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=14}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 14
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=13}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 13
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=12}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 12
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=11}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 11
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=10}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 10
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=9}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 9
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=8}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 8
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=7}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 7
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=6}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 6
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=5}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 5
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=4}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 4
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=3}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 3
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=2}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 2
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=1}] run item replace entity @s hotbar.5 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:280000} 1

execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=..0}] run item replace entity @s hotbar.5 with air



