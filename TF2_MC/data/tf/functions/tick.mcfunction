scoreboard players add @a[tag=!scopedIn,scores={class=2}] gracePeriod 1
scoreboard players set @a[scores={gracePeriod=6..}] timeScoped 0
tag @a[tag=scopedIn] remove scopedIn
execute as @a[scores={timeScoped=1..}] run function tf:damage_scaling
execute as @a[scores={timeScoped=0}] run scoreboard players set @s sniperDamage 10
execute as @a[scores={timeScoped=0}] run scoreboard players operation @s headshotDamage = @s minimum_damage

execute as @e[type=snowball] run function tf:demoman/armor_stand_tp
# execute as @e[type=snowball,tag=!bounced] at @s if entity @p[distance=..0.5] run function tf:explode_pipe

execute as @a if score @s class_change matches 1..9 run function tf:change_class
execute as @a unless score @s class_change matches 1..9 unless score @s class_change matches -9 run tellraw @s "Not a valid class ID. \nPlease type /trigger class_change set *ID*, where ID equals the ID of the class you want to pick. \nType /trigger class_change_help for more info."
execute as @a unless score @s class_change matches 1..9 unless score @s class_change matches -9 run scoreboard players enable @s class_change
execute as @a unless score @s class_change matches 1..9 unless score @s class_change matches -9 run scoreboard players set @s class_change -9
execute as @a unless score @s class matches 5 run scoreboard players reset @s headsCollected

# execute as @e store result score @s motion_X run data get entity @s Motion[0] 20
# execute as @e store result score @s motion_Z run data get entity @s Motion[2] 20
execute as @e[type=!player] store result score @s entity_HP run data get entity @s Health 10

execute as @a[tag=isPlaying] run function tf:reapply_attributes
execute if entity @a[tag=isPlaying] run function tf:set_spawns
execute as @a[tag=!canSprint] run function tf:prevent_speedhack

execute as @a[scores={class=1}] at @s run function tf:spy
execute as @a[scores={class=2}] at @s run function tf:sniper
execute as @a[scores={class=5}] at @s run function tf:demoman
execute as @a[scores={class=6}] at @s run function tf:heavy
execute as @a[scores={class=7}] at @s run function tf:pyro
execute as @a[scores={class=8}] at @s run function tf:engineer
execute as @a[scores={class=9}] at @s run function tf:medic
execute as @e[type=minecraft:arrow, nbt={Color:131328}] run kill @s

execute as @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag:{CustomModelData:101}}]}] run function tf:demoknight
execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:301}}]}] run function tf:display_cloak

execute as @a[scores={custom_damage=1..}] run function custom_damage:apply 

execute as @a[team=RED] run scoreboard players set @s team 1
execute as @a[team=BLU] run scoreboard players set @s team 2
execute as @a[team=GRN] run scoreboard players set @s team 3
execute as @a[team=YLW] run scoreboard players set @s team 4
execute as @e[type=#tf:projectiles] unless score @s projectileTeam matches 1..4 at @s run function tf:projectile_team_assign 

scoreboard players enable @a[scores={fixdoors=0}] fixdoors
execute as @a[scores={fixdoors=1..}] unless score $phase timer matches -2 run function tf:fix_doors
execute as @a[scores={fixdoors=1..}] unless score $phase timer matches -2 run scoreboard players set @s fixdoors 0
execute as @a unless score @s fixdoors matches 0.. run scoreboard players set @s fixdoors 0
execute if score $is_koth timer matches 0 unless score $paused timer matches 1 run function tf:timer/timer_to_bossbar
execute if score $is_koth timer matches 1 unless score $paused timer matches 1 run function tf:timer/koth_timer_to_bossbar
execute unless score $paused timer matches 1 run function tf:timer/increment_all_timers 


tag @a[tag=playingGrass] add isPlaying
tag @a[tag=playingBadwater] add isPlaying
tag @a[tag=playingWoodlands] add isPlaying

tag @a[scores={isDead=1..},tag=isPlaying,tag=!noRespawn] add isDead
scoreboard players add @a[tag=isDead] time_dead 1
execute as @a if entity @s[tag=isDead] run gamemode spectator @s
# execute as @a if entity @s[tag=isDead,scores={time_dead=..3}] run spectate @e[sort=random,type=player,limit=1]

execute as @a if score @s[tag=isDead,team=RED] time_dead >= $red_respawn_delay timer run tag @s add respawned
execute as @a if score @s[tag=isDead,team=BLU] time_dead >= $blu_respawn_delay timer run tag @s add respawned

execute as @e[type=chicken,tag=stickybomb_marker,tag=!tagged] unless score @s entity_HP matches 350.. run data modify entity @s Fire set value -20s
execute as @e[type=chicken,tag=stickybomb_marker,tag=!tagged] unless score @s entity_HP matches 350.. store success entity @s Air byte 1 run data modify entity @s Air set value 1b
execute as @e[type=chicken,tag=stickybomb_marker,tag=!tagged] unless score @s entity_HP matches 350.. run data modify entity @s Health set value 50.0f

execute as @a[tag=respawned] at @s run function tf:spawn
execute as @a[tag=respawned] at @s run function tf:resupply
execute as @a[tag=respawned] run gamemode survival @s
execute as @a[tag=respawned] run scoreboard players set @s isDead 0
execute as @a[tag=respawned] run tag @s remove isDead
execute as @a[tag=respawned] run tag @s remove respawned
scoreboard players set @a[tag=!isDead] time_dead 0

execute as @a store result score @s facing run data get entity @s Rotation[0]
execute as @a run scoreboard players operation @s trueFacing = @s facing
execute as @a run scoreboard players add @s trueFacing 180

execute as @a[scores={class=4}] at @s run function tf:rocket_launcher
tag @e[type=minecraft:firework_rocket,tag=!deflectable_projectile] add deflectable_projectile

execute positioned 307.30 63.00 58.27 as @a[distance=..4] unless predicate tf:burning if score $allow_modded_commands tf2.main matches 0 run function tf:extinguish/vanilla_friendly/return

execute as @e store result score @s converted-uuid0 run data get entity @s UUID[0]
execute as @e store result score @s converted-uuid1 run data get entity @s UUID[1]
execute as @e store result score @s converted-uuid2 run data get entity @s UUID[2]
execute as @e store result score @s converted-uuid3 run data get entity @s UUID[3]
execute as @e[type=!minecraft:player,type=!minecraft:marker,type=!minecraft:armor_stand] store result score @s pairedOwnerUUID run data get entity @s Owner[0]
execute as @a store result score @s pairedOwnerUUID run data get entity @s UUID[0]

execute as @e[type=arrow] unless entity @s[nbt={damage:0.3d}] run data modify entity @s pickup set value 2b