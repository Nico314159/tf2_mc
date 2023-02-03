#> tf2:start_game/as_players/team_assign
#
# @within tf2:start_game/as_marker

effect give @s glowing 1000 0 true
scoreboard players set @s tf2.team 1
execute if score $blu_count tf2.var < $red_count tf2.var run scoreboard players set @s tf2.team 2
execute if score $blu_count tf2.var = $red_count tf2.var if predicate tf2:coin_flip run scoreboard players set @s tf2.team 2
execute if score @s tf2.team matches 1 run team join RED
execute if score @s tf2.team matches 2 run team join BLU
execute if score @s tf2.team matches 1 run scoreboard players add $red_count tf2.var 1
execute if score @s tf2.team matches 2 run scoreboard players add $blu_count tf2.var 1
tellraw @a ["",{"text":"RED:  ","color":"red"},{"score":{"name":"$red_count","objective":"tf2.var"},"color":"red"},{"text":", ","color":"red"},{"text":"BLU: ","color":"blue"},{"score":{"name":"$blu_count","objective":"tf2.var"},"color":"blue"},{"text":", ","color":"blue"},"Current player: ",{"score":{"name":"@s","objective":"tf2.team"}}]

function tf2:spawn/init