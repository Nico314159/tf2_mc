scoreboard players set $i tf2.var 0
scoreboard players set $line tf2.var 1
execute positioned ~ ~1 ~ run function tf2:outline
execute if score $horizontal tf2.var matches ..1 run return fail
execute if score $y tf2.var matches ..1 run return fail
scoreboard players set __if_else__ tf2.var 0
execute if score $horizontal tf2.var > $y tf2.var run function tf2:__private__/if_else/44
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/45
scoreboard players operation $num tf2.var *= 1000 tf2.const
scoreboard players operation $num tf2.var /= $denom tf2.var
execute store result storage tf2.__temp__:index fraction double 0.001 run scoreboard players get $num tf2.var
scoreboard players set $i tf2.var 0
scoreboard players operation $longest tf2.var = $y tf2.var
scoreboard players operation $longest tf2.var > $horizontal tf2.var
function tf2:__private__/anonymous/20 with storage tf2.__temp__:index
function tf2:diagonal with storage tf2.__temp__:index