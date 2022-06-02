execute as @e[type=minecraft:item, nbt={OnGround:1b, Item:{id:"minecraft:glowstone_dust",tag:{CustomModelData:101}}}, scores={fuse_time=100..}] at @s if entity @e[type=player, sort=nearest, limit=1, distance=..5, team=!RED] run summon minecraft:creeper ~ ~ ~ {Fuse:0}
execute as @e[type=minecraft:item, nbt={OnGround:1b, Item:{id:"minecraft:glowstone_dust",tag:{CustomModelData:102}}},scores={fuse_time=100..}] at @s if entity @e[type=player, sort=nearest, limit=1, distance=..5, team=!BLU] run summon minecraft:creeper ~ ~ ~ {Fuse:0}
execute as @e[type=minecraft:item, nbt={OnGround:1b, Item:{id:"minecraft:glowstone_dust",tag:{CustomModelData:103}}},scores={fuse_time=100..}] at @s if entity @e[type=player, sort=nearest, limit=1, distance=..5, team=!GRN] run summon minecraft:creeper ~ ~ ~ {Fuse:0}
execute as @e[type=minecraft:item, nbt={OnGround:1b, Item:{id:"minecraft:glowstone_dust",tag:{CustomModelData:104}}},scores={fuse_time=100..}] at @s if entity @e[type=player, sort=nearest, limit=1, distance=..5, team=!YLW] run summon minecraft:creeper ~ ~ ~ {Fuse:0}


execute as @e[type=minecraft:item, nbt={OnGround:1b, Item:{id:"minecraft:glowstone_dust"}}] unless entity @s[scores={fuse_time = 1..}] run scoreboard players set @s fuse_time 1
execute as @e[type=minecraft:item, nbt={OnGround:1b, Item:{id:"minecraft:glowstone_dust"}}, scores={fuse_time = ..99}] run scoreboard players add @s fuse_time 1


execute as @a[team=RED, nbt={SelectedItem:{tag:{is_a_mine:1b}}}] run item replace entity @s weapon.mainhand with minecraft:glowstone_dust{CustomModelData:101}
execute as @a[team=BLU, nbt={SelectedItem:{tag:{is_a_mine:1b}}}] run item replace entity @s weapon.mainhand with minecraft:glowstone_dust{CustomModelData:102}
execute as @a[team=GRN, nbt={SelectedItem:{tag:{is_a_mine:1b}}}] run item replace entity @s weapon.mainhand with minecraft:glowstone_dust{CustomModelData:103}
execute as @a[team=YLW, nbt={SelectedItem:{tag:{is_a_mine:1b}}}] run item replace entity @s weapon.mainhand with minecraft:glowstone_dust{CustomModelData:104}

