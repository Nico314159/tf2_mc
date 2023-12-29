execute store result score $opp tf2.team run data get entity @s data.opp_team
execute as @a if score @s tf2.team = $opp tf2.team run tag @s add tf2.enemy
execute store result score $x tf2.var run data get entity @s data.dx
execute store result score $y tf2.var run data get entity @s data.dy
execute store result score $z tf2.var run data get entity @s data.dz
scoreboard players operation $horizontal tf2.var = $x tf2.var
scoreboard players operation $horizontal tf2.var > $z tf2.var
scoreboard players set $i tf2.var 0
scoreboard players set $line tf2.var 1
execute positioned ~ ~1 ~ run function tf2:noentrysign/outline
execute if score $horizontal tf2.var matches 2.. if score $y tf2.var matches 2.. run function tf2:__private__/if_else/44
scoreboard players set @s tf2.draw_delay 80
tag @a remove tf2.enemy