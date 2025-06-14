data modify storage tf2:vars Motion set from entity @s Motion
scoreboard players set $magnitude tf2.var 0
execute store result score __temp0__ tf2.var run data get storage tf2:vars Motion[0] 1000
scoreboard players operation __temp0__ tf2.var *= __temp0__ tf2.var
scoreboard players operation $magnitude tf2.var += __temp0__ tf2.var
execute store result score __temp0__ tf2.var run data get storage tf2:vars Motion[1] 1000
scoreboard players operation __temp0__ tf2.var *= __temp0__ tf2.var
scoreboard players operation $magnitude tf2.var += __temp0__ tf2.var
execute store result score __temp0__ tf2.var run data get storage tf2:vars Motion[2] 1000
scoreboard players operation __temp0__ tf2.var *= __temp0__ tf2.var
scoreboard players operation $magnitude tf2.var += __temp0__ tf2.var
scoreboard players operation __math__.N tf2.var = $magnitude tf2.var
function tf2:__private__/math_sqrt/main
scoreboard players operation $magnitude tf2.var = __math__.x_n tf2.var