scoreboard players operation @s tf2.collision_z = $mot.sign_z tf2.var
scoreboard players remove $mot.motion_head_z tf2.var 501
scoreboard players remove $mot.hitbox_z tf2.var 1
execute if score $mot.sign_z tf2.var matches -1 run scoreboard players add $mot.subblock_z tf2.var 1
scoreboard players operation $mot.subblock_z tf2.var %= 2 tf2.const
scoreboard players set $mot.distance_head_z tf2.var 2147483647
scoreboard players set $mot.distance_tail_z tf2.var 2147483647
execute if score @s tf2.halt matches 1 run scoreboard players set $mot.end tf2.var 1