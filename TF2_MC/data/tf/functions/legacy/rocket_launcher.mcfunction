tag @e[type=minecraft:firework_rocket,tag=!initialized,nbt={ShotAtAngle:1b}] add upgrade
execute at @e[tag=upgrade] run summon minecraft:firework_rocket ~ ~0.5 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks: {Flight: 1, Explosions: [{Type: 0b, Colors: [I; 11250603], FadeColors: [I; 1973019]}, {Type: 0b, Colors: [I; 11250603], FadeColors: [I; 1973019]}]}}},ShotAtAngle:1b,LifeTime:300,Tags:["replacement"],Passengers:[{id:"minecraft:marker",Tags:["rocket_marker"]}]}
execute as @e[tag=replacement,tag=!initialized] run data modify entity @s Motion set from entity @e[tag=upgrade,limit=1,sort=nearest] Motion
execute as @e[tag=replacement,tag=!initialized] run data modify entity @s Owner set from entity @e[tag=upgrade,limit=1,sort=nearest] Owner
execute as @e[tag=replacement,tag=!initialized] run data modify entity @s FireworksItem set from entity @e[tag=upgrade,limit=1,sort=nearest] FireworksItem
kill @e[type=minecraft:firework_rocket,tag=upgrade]
tag @e[tag=replacement] add initialized

execute as @e[type=marker,tag=!paired] at @s store result score @s pairedOwnerUUID run scoreboard players get @e[type=minecraft:firework_rocket,limit=1,sort=nearest] pairedOwnerUUID
execute as @e[type=marker,tag=!paired] at @s store result score @s pairedRocketUUID run scoreboard players get @e[type=minecraft:firework_rocket,limit=1,sort=nearest] converted-uuid0
execute as @e[type=marker] at @s if score @s pairedRocketUUID = @e[type=minecraft:firework_rocket,limit=1,sort=nearest] converted-uuid0 run tag @s add paired
execute as @e[type=marker,tag=rocket_marker] at @s unless entity @e[type=minecraft:firework_rocket,distance=..0.55] run tag @s add explode
execute as @e[type=marker,tag=explode] at @s run function tf:legacy/find_pair
execute as @e[type=marker,tag=explode] at @s run execute as @a[tag=tagged,distance=..4] at @s run knockback @s 0.33 1.45 3
execute as @e[type=marker,tag=explode] at @s run tag @a[tag=tagged,distance=..4] remove tagged
execute as @e[type=marker,tag=explode] run kill
tag @a remove tagged


execute if entity @s[scores={crossbow_shot=1..},nbt={SelectedItem:{tag:{isRocketLauncher:1b}}}] run scoreboard players remove @s primaryClip 1
execute if entity @s[scores={crossbow_shot=1..,class=4}] run scoreboard players set @s crossbow_shot 0

execute as @s unless entity @s[nbt=!{SelectedItem:{tag:{isRocketLauncher:1b}}}, nbt=!{Inventory: [{Slot: -106b, tag:{isRocketLauncher:1b}}]}] run tag @s add holding_primary
execute as @s if entity @s[nbt=!{SelectedItem:{tag:{isRocketLauncher:1b}}}, nbt=!{Inventory: [{Slot: -106b, tag:{isRocketLauncher:1b}}]}] run tag @s remove holding_primary

execute as @s[tag=holding_primary,scores={class=4},tag=!reloading_rocket] unless data entity @s SelectedItem.tag.ChargedProjectiles[0] run tag @s remove keep_rocket
#execute as @s if entity @s[tag=holding_primary,scores={class=4}] if data entity @s SelectedItem.tag.ChargedProjectiles[0] unless entity @s[tag=keep_rocket] run scoreboard players remove @s primaryClip 1
#execute as @s if entity @s[tag=holding_primary,scores={class=4}] if data entity @s SelectedItem.tag.ChargedProjectiles[0] run tag @s add keep_rocket

execute as @a unless score @s class matches 4 run tag @s remove keep_rocket

execute as @s store result score @s rocketsInHand run data get entity @s Inventory[{Slot:-106b}].Count
execute as @s unless score @s rocketsInHand = @s primaryClip unless entity @s[tag=reloading_rocket] unless entity @s[nbt={Inventory: [{Slot: -106b, tag:{isRocketLauncher:1b}}]}] run function tf:legacy/fix_rocket_clip
execute as @s if entity @s[scores={primaryClip=..-1}] run scoreboard players set @s primaryClip 0

execute as @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:firework_rocket", tag:{fakeRocket:1b}}]}] unless entity @s[nbt={SelectedItem:{}}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute as @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:firework_rocket", tag:{fakeRocket:1b}}]}] run item replace entity @s weapon.offhand with air
execute as @s if entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:firework_rocket"}]}] unless entity @s[nbt={Inventory: [{Slot: -106b, id:"minecraft:firework_rocket", tag:{fakeRocket:1b}}]}] unless entity @s[nbt={SelectedItem:{tag:{isRocketLauncher:1b}}}] run item replace entity @s weapon.offhand with air



execute as @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{isRocketLauncher:1b}}]}] run item replace entity @s weapon.mainhand with air
execute as @s if entity @s[scores={primaryClip=..3},nbt={Inventory: [{Slot: -106b, tag:{isRocketLauncher:1b}}]},nbt={Inventory:[{id:"minecraft:firework_rocket"}]}] run tag @s add reloading_rocket
execute as @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{isRocketLauncher:1b}}]},nbt={Inventory:[{id:"minecraft:firework_rocket"}]}] run tag @s add keep_rocket
execute as @s if entity @s[tag=reloading_rocket] run clear @s firework_rocket 1
execute as @s if entity @s[tag=reloading_rocket] run scoreboard players add @s primaryClip 1
execute as @s if entity @s[tag=reloading_rocket] run tag @s remove reloading_rocket

execute as @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{isRocketLauncher:1b}}]}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute as @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{isRocketLauncher:1b}}]}] run item replace entity @s weapon.offhand with air

execute as @s if score @s class matches 4 if entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:crossbow", Count: 1b, tag: {Enchantments: [{id: "minecraft:multishot"}]}}]}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute as @s if score @s class matches 4 if entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:crossbow", Count: 1b, tag: {Enchantments: [{id: "minecraft:multishot"}]}}]}] run item replace entity @s weapon.offhand with air

execute as @s if entity @s[nbt={SelectedItem:{tag:{isRocketLauncher:1b, ChargedProjectiles:[{id:"minecraft:arrow"}]}}}] run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"Rocket Launcher"}'},HideFlags:5,Unbreakable:1,isRocketLauncher:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:1}]} 1
