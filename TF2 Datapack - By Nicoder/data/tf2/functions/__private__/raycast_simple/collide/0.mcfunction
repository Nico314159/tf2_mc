scoreboard players set __current_iter_raycast__0 tf2.var -1
scoreboard players set @s tf2.health 0
tellraw @a [{"selector":"@s"},{"text":" was eliminated by ","color":"white"},{"selector":"@a[tag=__self__]"}]
kill @s[type=villager]