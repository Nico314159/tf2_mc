execute store result score $x tf2.var run random value 1..360
scoreboard players operation $z tf2.var = $x tf2.var
scoreboard players operation $z tf2.var *= $z tf2.var
scoreboard players operation $z tf2.var *= -1 tf2.const
scoreboard players add $z tf2.var 129600
scoreboard players operation __math__.N tf2.var = $z tf2.var
function tf2:__private__/math_sqrt/main
scoreboard players operation $z tf2.var = __math__.x_n tf2.var
scoreboard players operation $temp tf2.var = $tf2.mot_x:@s tf2.var
scoreboard players operation $temp tf2.var *= $tf2.mot_x:@s tf2.var
scoreboard players operation $temp tf2.var /= $tf2.mot_z:@s tf2.var
scoreboard players operation $temp tf2.var /= $tf2.mot_z:@s tf2.var
execute if score @s tf2.mot_x matches ..-1 run scoreboard players operation @s tf2.mot_x -= $x tf2.var
execute if score @s tf2.mot_x matches 0.. run scoreboard players operation @s tf2.mot_x += $x tf2.var
execute if score @s tf2.mot_z matches ..-1 run scoreboard players operation @s tf2.mot_z -= $z tf2.var
execute if score @s tf2.mot_z matches 0.. run scoreboard players operation @s tf2.mot_z += $z tf2.var
scoreboard players set __if_else__ tf2.var 0
execute if predicate tf2:coin_flip run function tf2:__private__/if_else/30
execute if score __if_else__ tf2.var matches 0 run scoreboard players operation @s tf2.mot_z *= -1 tf2.const
scoreboard players operation @s tf2.mot_y *= $elasticity tf2.var
scoreboard players operation @s tf2.mot_y /= 1000 tf2.const
tag @s add tf2.delayed_elasticity