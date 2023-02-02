effect give @s glowing 1000 0 true
execute store result score $red_count tf2.var if entity @e[type=#tf2:player_like,scores={tf2.team=1}] 
execute store result score $blu_count tf2.var if entity @e[type=#tf2:player_like,scores={tf2.team=2}]
scoreboard players set @s tf2.team 1
execute if score $blu_count tf2.var < $red_count tf2.var run scoreboard players set @s tf2.team 2
execute if score $blu_count tf2.var = $red_count tf2.var if predicate tf2:coin_flip run scoreboard players set @s tf2.team 2
execute if score @s tf2.team matches 1 run team join RED
execute if score @s tf2.team matches 2 run team join BLU