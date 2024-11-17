scoreboard players operation @s tf2.collision_y = $mot.sign_y tf2.var
scoreboard players remove $mot.motion_head_y tf2.var 501
scoreboard players remove $mot.hitbox_y tf2.var 1
execute if score $mot.sign_y tf2.var matches -1 run scoreboard players add $mot.subblock_y tf2.var 1
scoreboard players operation $mot.subblock_y tf2.var %= 2 tf2.const
scoreboard players set $mot.distance_head_y tf2.var 2147483647
scoreboard players set $mot.distance_tail_y tf2.var 2147483647
execute if score @s tf2.halt matches 1 run scoreboard players set $mot.end tf2.var 1