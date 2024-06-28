scoreboard players set @s tf2.health 0
tellraw @a[tag=tf2.current] ["",{"selector":"@s","type":"selector"},{"text":" fell into the void."}]
tp @s ~ 5 ~