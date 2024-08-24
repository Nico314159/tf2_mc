scoreboard players remove @s tf2.health 5
scoreboard players add @s tf2.drown_lost 5
execute if score @s tf2.health matches ..0 run tellraw @a[tag=tf2.current] ["",{"selector":"@s","type":"selector"},{"text":" drowned"}]