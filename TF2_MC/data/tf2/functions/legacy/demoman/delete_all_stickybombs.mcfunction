scoreboard players operation $search pairedOwnerUUID = @s pairedOwnerUUID
execute as @e[type=armor_stand] unless entity @s[tag=!red_stickybomb,tag=!blu_stickybomb] if score $search pairedOwnerUUID = @s pairedOwnerUUID run tag @s add delete

execute as @e[tag=delete] at @s run function tf2:legacy/demoman/delete_stickybomb
scoreboard players set @s activeBombs 0