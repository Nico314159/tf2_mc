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
summon arrow ~ ~1 ~ {Tags:["projectile", "fire"], damage:0.3d, Fire:100s, pickup:0b}

# assign projectiles to a team
data modify entity @e[tag=projectile,limit=1] Owner set from entity @s UUID

# apply motion to projectile
execute store result entity @e[type=arrow,tag=projectile,limit=1] Motion[0] double 0.001 run scoreboard players get #targetX pos
execute store result entity @e[type=arrow,tag=projectile,limit=1] Motion[1] double 0.001 run scoreboard players get #targetY pos
execute store result entity @e[type=arrow,tag=projectile,limit=1] Motion[2] double 0.001 run scoreboard players get #targetZ pos

# clean up, ready for the next player
tag @e[tag=projectile] remove projectile
kill @e[tag=direction]
