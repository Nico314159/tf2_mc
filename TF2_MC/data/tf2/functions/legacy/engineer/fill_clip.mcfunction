execute if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:arrow"}]}] run tag @s add holding_arrow
execute if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:arrow"}]}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:arrow"}}] run item replace entity @s weapon.mainhand with air
item replace entity @s hotbar.8 with air


# shotgun - clip
execute as @s if entity @s[tag=holding_primary,scores={primaryClip=6}] run item replace entity @s weapon.offhand with minecraft:arrow{value:260000} 6
execute as @s if entity @s[tag=holding_primary,scores={primaryClip=5}] run item replace entity @s weapon.offhand with minecraft:arrow{value:260000} 5
execute as @s if entity @s[tag=holding_primary,scores={primaryClip=4}] run item replace entity @s weapon.offhand with minecraft:arrow{value:260000} 4
execute as @s if entity @s[tag=holding_primary,scores={primaryClip=3}] run item replace entity @s weapon.offhand with minecraft:arrow{value:260000} 3
execute as @s if entity @s[tag=holding_primary,scores={primaryClip=2}] run item replace entity @s weapon.offhand with minecraft:arrow{value:260000} 2
execute as @s if entity @s[tag=holding_primary,scores={primaryClip=1}] run item replace entity @s weapon.offhand with minecraft:arrow{value:260000} 1

execute as @s if entity @s[tag=holding_primary,scores={primaryClip=..0}] run item replace entity @s weapon.offhand with air

# shotgun - ammo
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=32}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 32
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=31}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 31
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=30}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 30
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=29}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 29
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=28}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 28
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=27}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 27
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=26}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 26
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=25}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 25
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=24}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 24
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=23}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 23
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=22}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 22
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=21}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 21
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=20}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 20
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=20}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 20
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=19}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 19
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=18}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 18
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=17}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 17
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=16}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 16
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=15}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 15
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=14}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 14
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=13}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 13
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=12}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 12
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=11}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 11
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=10}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 10
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=9}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 9
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=8}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 8
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=7}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 7
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=6}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 6
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=5}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 5
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=4}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 4
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=3}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 3
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=2}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 2
execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=1}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:260000} 1

execute as @s if entity @s[tag=holding_primary,scores={primaryAmmo=..0}] run item replace entity @s hotbar.8 with air



# pistol - clip
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=12}] run item replace entity @s weapon.offhand with minecraft:arrow{value:270000} 12
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=11}] run item replace entity @s weapon.offhand with minecraft:arrow{value:270000} 11
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=10}] run item replace entity @s weapon.offhand with minecraft:arrow{value:270000} 10
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=9}] run item replace entity @s weapon.offhand with minecraft:arrow{value:270000} 9
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=8}] run item replace entity @s weapon.offhand with minecraft:arrow{value:270000} 8
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=7}] run item replace entity @s weapon.offhand with minecraft:arrow{value:270000} 7
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=6}] run item replace entity @s weapon.offhand with minecraft:arrow{value:270000} 6
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=5}] run item replace entity @s weapon.offhand with minecraft:arrow{value:270000} 5
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=4}] run item replace entity @s weapon.offhand with minecraft:arrow{value:270000} 4
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=3}] run item replace entity @s weapon.offhand with minecraft:arrow{value:270000} 3
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=2}] run item replace entity @s weapon.offhand with minecraft:arrow{value:270000} 2
execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=1}] run item replace entity @s weapon.offhand with minecraft:arrow{value:270000} 1

execute as @s if entity @s[tag=holding_secondary,scores={secondaryClip=..0}] run item replace entity @s weapon.offhand with air

# pistol - ammo
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=64}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 64
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=63}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 63
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=62}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 62
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=61}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 61
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=60}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 60
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=59}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 59
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=58}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 58
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=57}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 57
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=56}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 56
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=55}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 55
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=54}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 54
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=53}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 53
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=52}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 52
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=51}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 51
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=50}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 50
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=49}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 49
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=48}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 48
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=47}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 47
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=46}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 46
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=45}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 45
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=44}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 44
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=43}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 43
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=42}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 42
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=41}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 41
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=40}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 40
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=39}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 39
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=38}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 38
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=37}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 37
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=36}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 36
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=35}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 35
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=34}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 34
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=33}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 33
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=32}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 32
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=31}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 31
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=30}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 30
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=29}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 29
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=28}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 28
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=27}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 27
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=26}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 26
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=25}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 25
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=24}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 24
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=23}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 23
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=22}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 22
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=21}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 21
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=20}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 20
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=19}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 19
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=18}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 18
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=17}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 17
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=16}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 16
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=15}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 15
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=14}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 14
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=13}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 13
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=12}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 12
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=11}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 11
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=10}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 10
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=9}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 9
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=8}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 8
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=7}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 7
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=6}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 6
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=5}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 5
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=4}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 4
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=3}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 3
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=2}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 2
execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=1}] run item replace entity @s hotbar.8 with minecraft:paper{display:{Name:'[{"text":"Arrow","italic":false}]'},CustomModelData:270000} 1

execute as @s if entity @s[tag=holding_secondary,scores={secondaryAmmo=..0}] run item replace entity @s hotbar.8 with air

tag @s remove holding_arrow
