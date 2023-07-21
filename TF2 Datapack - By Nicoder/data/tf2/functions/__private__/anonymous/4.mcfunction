scoreboard players set @s tf2.health 0
tellraw @a ["",{"selector":"@s"},{"text":" fell into the void."}]
tp @s ~ 5 ~