# execute if entity @s[scores={timeExisted=63..}] run tellraw NicoWill314 "weak explosion (timer)"
# execute if entity @s[scores={timeExisted=..62}] if entity @p[distance=..1] run tellraw NicoWill314 "weak explosion (collision)"
# execute if entity @s[scores={timeExisted=..62}] unless entity @p[distance=..1] run tellraw NicoWill314 "weak explosion (bug)"
particle minecraft:explosion ~ ~0.5 ~ 0 0 0 0 0 force @a

scoreboard players operation #temp team = @s team
execute at @s as @a[distance=..2.8] unless score @s team = #temp team run tag @s add grenade_damage

scoreboard players operation #tempTwo pairedOwnerUUID = @s pairedOwnerUUID
execute as @a if score #tempTwo pairedOwnerUUID = @s pairedOwnerUUID run tag @s add grenade_shooter
execute as @a[distance=..2.8] if score #tempTwo pairedOwnerUUID = @s pairedOwnerUUID run tag @s add grenade_damage

execute at @s as @a[tag=grenade_damage,distance=..0.279,sort=nearest,limit=1] run scoreboard players set @s custom_damage 12
execute at @s as @a[tag=grenade_damage,distance=0.28..0.559] run scoreboard players set @s custom_damage 11
execute at @s as @a[tag=grenade_damage,distance=0.56..1.119] run scoreboard players set @s custom_damage 10
execute at @s as @a[tag=grenade_damage,distance=1.12..1.679] run scoreboard players set @s custom_damage 9
execute at @s as @a[tag=grenade_damage,distance=1.68..2.239] run scoreboard players set @s custom_damage 7
execute at @s as @a[tag=grenade_damage,distance=2.24..2.8] run scoreboard players set @s custom_damage 6

execute as @a[tag=grenade_damage] run knockback @s 0.5 0.75 0 

execute as @a[tag=grenade_damage] if score @s custom_damage >= @s HP run gamerule showDeathMessages false
execute as @a[tag=grenade_damage] if score @s custom_damage >= @s HP run tellraw @a ["",{"selector":"@s"}," was blown up by ", {"selector":"@a[tag=grenade_shooter,limit=1]"}]
execute as @a[tag=grenade_damage,tag=!grenade_shooter] if score @s custom_damage >= @s HP run scoreboard players add @a[tag=grenade_shooter,limit=1] killCount 1

tag @a remove grenade_damage
tag @a remove grenade_shooter
kill @s