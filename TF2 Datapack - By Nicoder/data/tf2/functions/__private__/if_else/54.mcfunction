scoreboard players set __if_else__ tf2.var 0
execute if score $horizontal tf2.var > $y tf2.var run function tf2:__private__/if_else/52
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/53
scoreboard players operation $num tf2.var *= 1000 tf2.const
scoreboard players operation $num tf2.var /= $denom tf2.var
execute store result storage tf2:vars fraction double 0.001 run scoreboard players get $num tf2.var
scoreboard players set $i tf2.var 0
scoreboard players operation $longest tf2.var = $y tf2.var
scoreboard players operation $longest tf2.var > $horizontal tf2.var
function tf2:__private__/anonymous/42 with storage tf2:vars
function tf2:noentrysign/diagonal with storage tf2:vars