execute unless score @s tf2.collision_x matches 0 run function tf2:__private__/if_else/40
execute unless score @s tf2.collision_y matches 0 run function tf2:__private__/if_else/41
execute unless score @s tf2.collision_z matches 0 run function tf2:__private__/if_else/42
scoreboard players operation $mot.motion_head_x tf2.var = @s tf2.mot_x
scoreboard players operation $mot.motion_head_x tf2.var *= $mot.numerator tf2.var
scoreboard players operation $mot.motion_head_x tf2.var /= $mot.denominator tf2.var
scoreboard players operation $mot.motion_head_y tf2.var = @s tf2.mot_y
scoreboard players operation $mot.motion_head_y tf2.var *= $mot.numerator tf2.var
scoreboard players operation $mot.motion_head_y tf2.var /= $mot.denominator tf2.var
scoreboard players operation $mot.motion_head_z tf2.var = @s tf2.mot_z
scoreboard players operation $mot.motion_head_z tf2.var *= $mot.numerator tf2.var
scoreboard players operation $mot.motion_head_z tf2.var /= $mot.denominator tf2.var