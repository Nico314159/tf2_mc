scoreboard players operation $search pairedOwnerUUID = @s pairedOwnerUUID
execute as @e[type=armor_stand, tag=deployed_stickybomb] if score $search pairedOwnerUUID = @s pairedOwnerUUID run tag @s add force_explode

scoreboard players set $highest timeExisted 0
execute as @e[tag=force_explode] run scoreboard players operation $highest timeExisted > @s timeExisted
execute as @e[tag=force_explode] unless score @s timeExisted = $highest timeExisted run tag @s remove force_explode

tag @s add stickybomb_shooter 

execute as @e[tag=force_explode,limit=1,sort=random] at @s run function tf:demoman/detonate_stickybomb
execute as @e[tag=force_explode] run tag @s remove force_explode

tag @a remove stickybomb_shooter 