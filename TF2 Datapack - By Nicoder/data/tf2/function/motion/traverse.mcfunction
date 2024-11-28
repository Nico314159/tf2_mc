execute if score $mot.motion_head_x tf2.var > @s tf2.mot_x run scoreboard players set $mot.distance_head_x tf2.var 2147483647
execute if score $mot.motion_tail_x tf2.var > @s tf2.mot_x run scoreboard players set $mot.distance_tail_x tf2.var 2147483647
execute if score $mot.motion_head_y tf2.var > @s tf2.mot_y run scoreboard players set $mot.distance_head_y tf2.var 2147483647
execute if score $mot.motion_tail_y tf2.var > @s tf2.mot_y run scoreboard players set $mot.distance_tail_y tf2.var 2147483647
execute if score $mot.motion_head_z tf2.var > @s tf2.mot_z run scoreboard players set $mot.distance_head_z tf2.var 2147483647
execute if score $mot.motion_tail_z tf2.var > @s tf2.mot_z run scoreboard players set $mot.distance_tail_z tf2.var 2147483647
scoreboard players set __if_else__ tf2.var 0
execute if score $mot.distance_head_x tf2.var matches 2147483647 if score $mot.distance_head_y tf2.var matches 2147483647 if score $mot.distance_head_z tf2.var matches 2147483647 if score $mot.distance_tail_x tf2.var matches 2147483647 if score $mot.distance_tail_y tf2.var matches 2147483647 if score $mot.distance_tail_z tf2.var matches 2147483647 run function tf2:__private__/if_else/39
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/40