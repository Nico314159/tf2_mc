particle minecraft:explosion_emitter ~ ~0.5 ~ 0 0 0 0 0 force @a

execute as @a[tag=stickybomb_shooter] run scoreboard players remove @s activeBombs 1

scoreboard players operation $tempTwo team = @s team
scoreboard players operation $tempTwo pairedOwnerUUID = @s pairedOwnerUUID
execute at @s as @a[distance=..2.7] unless score @s team = $tempTwo team run tag @s add stickybomb_damage

execute as @a[distance=..2.7] if score $tempTwo pairedOwnerUUID = @s pairedOwnerUUID run tag @s add stickybomb_damage

execute as @a[tag=stickybomb_damage] if score @s custom_damage > @s HP run tag @s add no_kill_msg

execute at @s as @a[tag=stickybomb_damage,distance=..0.269,sort=nearest,limit=1] run scoreboard players add @s custom_damage 29
execute at @s as @a[tag=stickybomb_damage,distance=0.27..0.539] run scoreboard players add @s custom_damage 24
execute at @s as @a[tag=stickybomb_damage,distance=0.54..1.079] run scoreboard players add @s custom_damage 21
execute at @s as @a[tag=stickybomb_damage,distance=1.08..1.619] run scoreboard players add @s custom_damage 18
execute at @s as @a[tag=stickybomb_damage,distance=1.62..2.159] run scoreboard players add @s custom_damage 15
execute at @s as @a[tag=stickybomb_damage,distance=2.16..2.7] run scoreboard players add @s custom_damage 12

execute as @a[tag=stickybomb_damage] run knockback @s 0.75 1 -1

execute as @a[tag=stickybomb_damage] if score @s custom_damage > @s HP run gamerule showDeathMessages false
execute as @a[tag=stickybomb_damage, tag=!no_kill_msg] if score @s custom_damage > @s HP run tellraw @a ["",{"selector":"@s"}," was blown up by ", {"selector":"@a[tag=stickybomb_shooter,limit=1]"}]
execute as @a[tag=stickybomb_damage,tag=!stickybomb_shooter, tag=!no_kill_msg] if score @s custom_damage > @s HP run scoreboard players add @a[tag=stickybomb_shooter,limit=1] killCount 1

tag @a remove stickybomb_damage
tag @a remove no_kill_msg
execute at @s as @e[type=chicken,tag=stickybomb_marker,sort=nearest,limit=1] run kill @s
kill @s