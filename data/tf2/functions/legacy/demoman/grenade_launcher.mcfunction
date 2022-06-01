# summon the temporary entity
summon area_effect_cloud ^ ^ ^1 {Tags:["direction"]}

# get the coordinates of the player and the entity
execute store result score #playerX pos run data get entity @s Pos[0] 1000
execute store result score #playerY pos run data get entity @s Pos[1] 1000
execute store result score #playerZ pos run data get entity @s Pos[2] 1000
execute store result score #targetX pos as @e[type=area_effect_cloud,tag=direction,limit=1] run data get entity @s Pos[0] 1000
execute store result score #targetY pos as @e[type=area_effect_cloud,tag=direction,limit=1] run data get entity @s Pos[1] 1000
execute store result score #targetZ pos as @e[type=area_effect_cloud,tag=direction,limit=1] run data get entity @s Pos[2] 1000

# do the math
scoreboard players operation #targetX pos -= #playerX pos
scoreboard players operation #targetY pos -= #playerY pos
scoreboard players operation #targetZ pos -= #playerZ pos

# summon the projectile entity (e.g. sheep, but can also be an arrow/snowball/etc. 
# When using a projectile, you might want to summon it in front of the player so it doesn't hit themselves)
# you might want to summon it at the players eyes as well using anchored eyes
execute if entity @s[team=RED] positioned ~ ~-0.5 ~ anchored eyes run summon snowball ^-0.33 ^ ^0.66 {Tags:["projectile", "deflectable_projectile", "red_grenade"], Item:{Count:1b,id:"paper",tag:{CustomModelData:1}}}
execute if entity @s[team=BLU] positioned ~ ~-0.5 ~ anchored eyes run summon snowball ^-0.33 ^ ^0.66 {Tags:["projectile", "deflectable_projectile", "blu_grenade"], Item:{Count:1b,id:"paper",tag:{CustomModelData:1}}}

# summon matching armor stand
execute if entity @s[team=RED] at @s positioned ~ ~-0.5 ~ run summon armor_stand ^-0.33 ^ ^1 {Tags:["projectile", "deflectable_projectile", "red_grenade"], Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Rotation:[0.0f,0.0f],Marker:1b,ArmorItems:[{},{},{},{id:"paper",Count:1b,tag:{CustomModelData:210000}}],HandItems:[{},{}],CustomNameVisible:0b,Pose:{Head:[1.0f,1.0f,1.0f]}}
execute if entity @s[team=BLU] at @s positioned ~ ~-0.5 ~ run summon armor_stand ^-0.33 ^ ^1 {Tags:["projectile", "deflectable_projectile", "blu_grenade"], Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Rotation:[0.0f,0.0f],Marker:1b,ArmorItems:[{},{},{},{id:"paper",Count:1b,tag:{CustomModelData:220000}}],HandItems:[{},{}],CustomNameVisible:0b,Pose:{Head:[1.0f,1.0f,1.0f]}}

# assign projectiles to a team
data modify entity @e[tag=projectile,limit=1,type=snowball] Owner set from entity @s UUID
# data modify entity @e[tag=projectile,limit=1,type=armor_stand] Owner set from entity @s UUID

scoreboard players operation #tempThree pairedOwnerUUID = @s converted-uuid0
execute as @e[tag=projectile,limit=1,type=armor_stand] run scoreboard players operation @s pairedOwnerUUID = #tempThree pairedOwnerUUID

execute as @e[tag=projectile,type=snowball] store result score @s projectileUUID run data get entity @s UUID[0]
execute as @e[type=armor_stand,limit=1,tag=projectile] store result score @s projectileUUID run data get entity @e[type=snowball,tag=projectile,limit=1,sort=nearest] UUID[0]


execute as @e[type=armor_stand,limit=1,tag=projectile] at @s store result score @s pairedOwnerUUID run scoreboard players get @e[type=snowball,tag=projectile,limit=1,sort=nearest] pairedOwnerUUID

execute as @s at @s run function tf2:legacy/demoman/rotate_stand


# apply motion to projectile
execute store result entity @e[type=snowball,tag=projectile,limit=1] Motion[0] double 0.0008 run scoreboard players get #targetX pos
execute store result entity @e[type=snowball,tag=projectile,limit=1] Motion[1] double 0.0008 run scoreboard players get #targetY pos
execute store result entity @e[type=snowball,tag=projectile,limit=1] Motion[2] double 0.0008 run scoreboard players get #targetZ pos

# clean up, ready for the next player
scoreboard players set @s attack_cooldown 12
scoreboard players remove @s primaryClip 1
function tf2:legacy/demoman/fill_clip
tag @e[tag=projectile] remove projectile
kill @e[tag=direction]
