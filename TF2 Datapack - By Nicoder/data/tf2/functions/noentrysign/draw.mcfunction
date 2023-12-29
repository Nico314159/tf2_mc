scoreboard players operation $temp tf2.team = @s tf2.team
execute as @a unless score @s tf2.team = $temp tf2.team run tag @s add tf2.enemy
execute store result score $x tf2.var run data get entity @s data.dx
execute store result score $y tf2.var run data get entity @s data.dy
execute store result score $z tf2.var run data get entity @s data.dz
scoreboard players operation $horizontal tf2.var = $x tf2.var
scoreboard players operation $horizontal tf2.var > $z tf2.var
scoreboard players set $i tf2.var 0
scoreboard players set $line tf2.var 1
execute positioned ~ ~1 ~ run function tf2:noentrysign/outline
execute if score $horizontal tf2.var matches ..1 run return run tag @a remove tf2.enemy
execute if score $y tf2.var matches ..1 run return run tag @a remove tf2.enemy
scoreboard players set __if_else__ tf2.var 0
execute if score $horizontal tf2.var > $y tf2.var run function tf2:__private__/if_else/42
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/43
scoreboard players operation $num tf2.var *= 1000 tf2.const
scoreboard players operation $num tf2.var /= $denom tf2.var
execute store result storage tf2.__temp__:index fraction double 0.001 run scoreboard players get $num tf2.var
scoreboard players set $i tf2.var 0
scoreboard players operation $longest tf2.var = $y tf2.var
scoreboard players operation $longest tf2.var > $horizontal tf2.var
function tf2:__private__/anonymous/21 with storage tf2.__temp__:index
function tf2:noentrysign/diagonal with storage tf2.__temp__:index
tag @a remove tf2.enemy