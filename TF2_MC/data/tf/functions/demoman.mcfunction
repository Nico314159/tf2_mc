# attack speed limiters
execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:501}}},scores={attack_cooldown=1..}] run scoreboard players remove @s attack_cooldown 1
execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:601}}},scores={attack_cooldown=1..}] run scoreboard players remove @s attack_cooldown 1

# fire weapons
execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:501}}},scores={rightClicks=1..,attack_cooldown=..0,primaryClip=1..}] run function tf:demoman/grenade_launcher
execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:601}}},scores={rightClicks=1..,attack_cooldown=..0,secondaryClip=1..}] run function tf:demoman/stickybomb_launcher


# detect primary vs secondary
tag @s remove holding_primary
tag @s remove holding_secondary
execute as @s unless entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:501}}},nbt=!{Inventory: [{Slot: -106b, tag:{CustomModelData:501}}]}] run tag @s add holding_primary
execute as @s unless entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:601}}}, nbt=!{Inventory: [{Slot: -106b, tag:{CustomModelData:601}}]}] run tag @s add holding_secondary


# make sure projectiles are on teams
execute as @e[type=minecraft:armor_stand, tag=red_grenade] run scoreboard players set @s team 1
execute as @e[type=minecraft:armor_stand, tag=blu_grenade] run scoreboard players set @s team 2
execute as @e[type=minecraft:armor_stand, tag=red_stickybomb] run scoreboard players set @s team 1
execute as @e[type=minecraft:armor_stand, tag=blu_stickybomb] run scoreboard players set @s team 2
execute as @e[type=minecraft:armor_stand,scores={pairedOwnerUUID=0}] at @s unless entity @s[tag=!red_grenade,tag=!blu_grenade] run scoreboard players operation @s pairedOwnerUUID = @e[type=minecraft:snowball,sort=nearest,limit=1] pairedOwnerUUID

# debug stuff (pls ignore)
# execute as @e[type=minecraft:armor_stand,tag=!bounced] at @s unless entity @s[tag=!red_grenade,tag=!blu_grenade] unless entity @e[type=minecraft:snowball,distance=..2, limit=1, sort=nearest] run say seal 


# explode pipes due to collision
execute as @e[type=minecraft:armor_stand,tag=!bounced] at @s unless entity @s[tag=!red_grenade,tag=!blu_grenade] unless entity @e[type=minecraft:snowball,distance=..2, limit=1, sort=nearest] if entity @a[sort=nearest, limit=1, distance=..1.5] run function tf:demoman/explode_pipe
execute as @e[type=minecraft:armor_stand,tag=bounced] at @s unless entity @s[tag=!red_grenade,tag=!blu_grenade] unless entity @e[type=minecraft:snowball,distance=..2, limit=1, sort=nearest] if entity @a[sort=nearest, limit=1, distance=..1.5] run function tf:demoman/explode_pipe_after_bounce

# explode pipes due to timer
execute as @e[type=minecraft:armor_stand,scores={timeExisted=63..},tag=!bounced] at @s unless entity @s[tag=!red_grenade,tag=!blu_grenade] run function tf:demoman/explode_pipe
execute as @e[type=minecraft:armor_stand,scores={timeExisted=63..},tag=bounced] at @s unless entity @s[tag=!red_grenade,tag=!blu_grenade] run function tf:demoman/explode_pipe_after_bounce


# debugger
# execute as @e[type=minecraft:snowball,scores={motion_X=0,motion_Z=0,timeExisted=5..}] unless entity @s[tag=!red_grenade,tag=!blu_grenade] run tellraw NicoWill314 "test"
execute as @e[type=minecraft:snowball,scores={motion_X=0,motion_Z=0,timeExisted=5..}] unless entity @s[tag=!red_grenade,tag=!blu_grenade] run kill @s

# kill pipes if they end up in a bugged state
execute as @e[type=minecraft:armor_stand] at @s unless entity @s[tag=!red_grenade,tag=!blu_grenade] unless entity @e[type=minecraft:snowball,distance=..3, limit=1, sort=nearest] unless entity @p[distance=..2] run kill @s


# fuse time
execute as @e at @s unless entity @s[tag=!red_grenade,tag=!blu_grenade,tag=!red_stickybomb,tag=!blu_stickybomb] run scoreboard players add @s timeExisted 1
execute as @e[type=minecraft:armor_stand,scores={timeExisted=63..}] at @s unless entity @s[tag=!red_grenade,tag=!blu_grenade] if entity @e[type=minecraft:snowball,distance=..2, limit=1, sort=nearest] as @e[type=minecraft:snowball,distance=..2, limit=1, sort=nearest] run kill @s


# motion storage (for bouncing)
execute as @e[type=minecraft:snowball] store result score @s motion_X run data get entity @s Motion[0] 50
execute as @e[type=minecraft:snowball] store result score @s motion_Y run data get entity @s Motion[1] 10
execute as @e[type=minecraft:snowball] store result score @s motion_Z run data get entity @s Motion[2] 50

# tumbling, rolling, and bouncing
execute as @e[type=minecraft:armor_stand,scores={timeExisted=2..},tag=!rolling] at @s unless entity @s[tag=!red_grenade,tag=!blu_grenade] run function tf:demoman/tumble_pipe
execute as @e[type=minecraft:armor_stand,tag=!deployed_stickybomb] at @s unless entity @s[tag=!red_stickybomb,tag=!blu_stickybomb] run function tf:demoman/tumble_stickybomb
execute as @e[type=minecraft:armor_stand,scores={timeExisted=2..},tag=rolling] at @s unless entity @s[tag=!red_grenade,tag=!blu_grenade] run function tf:demoman/roll_pipe
execute as @e[type=minecraft:snowball] at @s unless entity @s[tag=!red_grenade,tag=!blu_grenade] unless entity @s[tag=bounced, scores={gracePeriod=0..2}] run function tf:demoman/bounce_pipe

execute as @e[type=minecraft:snowball,scores={timeExisted=7..}] at @s unless entity @s[tag=!red_stickybomb,tag=!blu_stickybomb] if entity @p[distance=..2] run function tf:demoman/bounce_stickybomb

# prevent bounce loops
execute as @e[type=minecraft:snowball] unless entity @s[tag=!red_grenade,tag=!blu_grenade, tag=!red_stickybomb,tag=!blu_stickybomb] run scoreboard players add @s gracePeriod 1
execute as @e[type=minecraft:snowball, scores={gracePeriod=4..}] run scoreboard players set @s gracePeriod 3



# detect when stickybomb contacts with surfaces
execute as @e[type=minecraft:armor_stand, tag=!deployed_stickybomb] at @s unless entity @s[tag=!red_stickybomb,tag=!blu_stickybomb] unless entity @e[type=minecraft:snowball,distance=..2, limit=1, sort=nearest] run function tf:demoman/deploy_stickybomb

# arm stickybombs
execute as @e[type=minecraft:armor_stand,tag=unarmed_stickybomb,scores={timeExisted=14..}] run function tf:demoman/arm_stickybomb



# ammo display stuff
execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:501}}}] unless entity @s[nbt={Inventory: [{Slot: 7b}]}] unless entity @s[nbt={Inventory: [{Slot: 8b}]}] run function tf:demoman/fill_clip
execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:601}}}] unless entity @s[nbt={Inventory: [{Slot: 7b}]}] unless entity @s[nbt={Inventory: [{Slot: 8b}]}] run function tf:demoman/fill_clip

execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:501}}}] unless entity @s[nbt=!{Inventory: [{Slot: 7b, tag:{CustomModelData:230000}}]},nbt=!{Inventory: [{Slot: 7b, tag:{CustomModelData:240000}}]},nbt=!{Inventory: [{Slot: 8b, tag:{CustomModelData:230000}}]},nbt=!{Inventory: [{Slot: 8b, tag:{CustomModelData:240000}}]}] run function tf:demoman/fill_clip
execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:601}}}] unless entity @s[nbt=!{Inventory: [{Slot: 7b, tag:{CustomModelData:210000}}]},nbt=!{Inventory: [{Slot: 7b, tag:{CustomModelData:220000}}]},nbt=!{Inventory: [{Slot: 8b, tag:{CustomModelData:210000}}]},nbt=!{Inventory: [{Slot: 8b, tag:{CustomModelData:220000}}]}] run function tf:demoman/fill_clip

# hide ammo display when not holding any weapons
execute as @s at @s unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:501}}}] unless entity @s[tag=holding_secondary] run item replace entity @s hotbar.7 with air
execute as @s at @s unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:501}}}] unless entity @s[tag=holding_secondary] run item replace entity @s hotbar.8 with air



# grenade launcher reload
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{CustomModelData:501}}]},scores={primaryAmmo=1..,primaryClip=..3}] run tag @s add reloading_grenade 
execute as @s at @s if entity @s[tag=reloading_grenade] run scoreboard players remove @s primaryAmmo 1
execute as @s at @s if entity @s[tag=reloading_grenade] run scoreboard players add @s primaryClip 1
execute as @s at @s if entity @s[tag=reloading_grenade] run tag @s remove reloading_grenade
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{CustomModelData:501}}]},scores={class=5}] run function tf:demoman/fill_clip
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{CustomModelData:501}}]}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand 
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{CustomModelData:501}}]}] run item replace entity @s weapon.offhand with air


# stickybomb launcher reload
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{CustomModelData:601}}]},scores={secondaryAmmo=1..,secondaryClip=..7}] run tag @s add reloading_stickybomb
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{CustomModelData:601}}]}, scores={gracePeriod=..20}] run scoreboard players add @s gracePeriod 1
execute as @s at @s if entity @s[tag=holding_secondary, tag=reloading_stickybomb, scores={gracePeriod=..20}] run scoreboard players add @s gracePeriod 1
execute as @s at @s if entity @s[tag=reloading_stickybomb, scores={gracePeriod=20..}] run scoreboard players remove @s secondaryAmmo 1
execute as @s at @s if entity @s[tag=reloading_stickybomb, scores={gracePeriod=20..}] run scoreboard players add @s secondaryClip 1
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{CustomModelData:601}}]},scores={class=5,gracePeriod=20..},tag=reloading_stickybomb] run function tf:demoman/fill_clip
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{CustomModelData:601}}]}, scores={gracePeriod=20..}] run item replace entity @s hotbar.1 from entity @s weapon.offhand 
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{CustomModelData:601}}]}, scores={gracePeriod=20..}] run item replace entity @s weapon.offhand with air
execute as @s at @s if entity @s[scores={gracePeriod=20..}] run scoreboard players set @s gracePeriod 0
execute as @s at @s if entity @s[tag=reloading_stickybomb] run tag @s remove reloading_stickybomb


# prevent switching weapons whilst reloading
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{CustomModelData:601}}]}, nbt={SelectedItem:{}}] run scoreboard players set @s gracePeriod 0
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{CustomModelData:601}}]}, nbt={SelectedItem:{}}] run item replace entity @s hotbar.1 from entity @s weapon.offhand 
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{CustomModelData:601}}]}, nbt={SelectedItem:{}}] run item replace entity @s weapon.offhand with air
execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:601}}},scores={gracePeriod=1..20}] run function tf:hand_swap


# stickybomb launcher detonation
execute as @s at @s unless score @s detonate matches 0..1 run scoreboard players set @s detonate 0
execute as @s at @s if score @s detonate matches 0 run scoreboard players enable @s detonate
execute as @s at @s if entity @s[nbt={Inventory: [{Slot: -106b, tag:{CustomModelData:601}}]},scores={rightClicks=1..,detonate=0}] run scoreboard players set @s detonate 1
execute as @s at @s if entity @s[scores={detonate=1}] run function tf:demoman/search_for_stickies
execute as @s at @s if entity @s[scores={rightClicks=1..}] run scoreboard players set @s rightClicks 0
execute as @s at @s if entity @s[scores={activeBombs=9..}] run function tf:demoman/detonate_oldest_stickybomb

# prevent players from destroying own team's stickybombs
# execute as @e[tag=deployed_stickybomb,scores={projectileTeam=1}] at @s run kill @e[type=#tf:projectiles, scores={projectileTeam=1}, distance=0.001..0.25]
# execute as @e[tag=deployed_stickybomb,scores={projectileTeam=2}] at @s run kill @e[type=#tf:projectiles, scores={projectileTeam=2}, distance=0.001..0.25]

# execute as @e[tag=deployed_stickybomb,scores={projectileTeam=1}] at @s if entity @e[type=#tf:projectiles, scores={projectileTeam=2}, distance=0.001..0.33, sort=nearest, limit=1] run function tf:demoman/delete_stickybomb
# execute as @e[tag=deployed_stickybomb,scores={projectileTeam=2}] at @s if entity @e[type=#tf:projectiles, scores={projectileTeam=1}, distance=0.001..0.33, sort=nearest, limit=1] run function tf:demoman/delete_stickybomb

# delete stickybombs on death
execute if entity @s[tag=isDead] run function tf:demoman/delete_all_stickybombs
