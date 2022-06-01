scoreboard players operation #search pairedOwnerUUID = @s pairedOwnerUUID

tag @s add stickybomb_shooter 

execute as @e[type=armor_stand, tag=armed_stickybomb] at @s if score #search pairedOwnerUUID = @s pairedOwnerUUID run function tf2:legacy/demoman/detonate_stickybomb
execute as @e[type=armor_stand, tag=unarmed_stickybomb] at @s if score #search pairedOwnerUUID = @s pairedOwnerUUID run function tf2:legacy/demoman/delete_stickybomb

tag @a remove stickybomb_shooter

execute if entity @s[nbt={Inventory: [{Slot: -106b, tag:{CustomModelData:601}}]}] run function tf2:legacy/hand_swap
scoreboard players set @s rightClicks 0
scoreboard players set @s gracePeriod 0
scoreboard players set @s detonate 0
scoreboard players set @s activeBombs 0
scoreboard players enable @s detonate