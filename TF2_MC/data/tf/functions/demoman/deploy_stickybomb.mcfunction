# tellraw NicoWill314 "hit surface"
tag @s add deployed_stickybomb
data modify entity @s Invulnerable set value 0b
data modify entity @s Health set value 50.0f

scoreboard players operation #owner pairedOwnerUUID = @s pairedOwnerUUID
execute as @a if score #owner pairedOwnerUUID = @s pairedOwnerUUID run scoreboard players add @s activeBombs 1

execute at @s run summon chicken ~ ~200 ~ {Age:-25000,AgeLocked:1b,PersistenceRequired:1,Silent:1,NoAI:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}],Attributes:[{Name:"minecraft:generic.max_health",Base:50.0d}],Health:50.0f,Tags:["stickybomb_marker"]}
execute at @s positioned ~ ~200 ~ run scoreboard players operation @e[type=minecraft:chicken,tag=stickybomb_marker,sort=nearest,limit=1] team = @s team
execute at @s positioned ~ ~200 ~ run tp @e[type=chicken,tag=stickybomb_marker, sort=nearest,limit=1] ~ ~-199 ~

# execute as @e[tag=owner] function tf:demoman/recalculate_deployed_stickybombs