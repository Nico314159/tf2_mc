scoreboard players set $mot.end tf2.var 0
data modify storage tf2:motion pos set value {}
scoreboard players set @s tf2.collision_x 0
execute if score @s tf2.mot_x matches 0.. run scoreboard players set $mot.sign_x tf2.var 1
execute if score @s tf2.mot_x matches ..-1 run scoreboard players set $mot.sign_x tf2.var -1
scoreboard players operation @s tf2.mot_x *= $mot.sign_x tf2.var
scoreboard players operation $mot.initial_x tf2.var = @s tf2.x
scoreboard players operation $mot.initial_x tf2.var -= @s tf2.hitbox_x
scoreboard players operation $mot.subblock_x tf2.var = $mot.initial_x tf2.var
scoreboard players operation $mot.subblock_x tf2.var %= 1000 tf2.const
scoreboard players operation $mot.subblock_x tf2.var /= 500 tf2.const
execute store result storage tf2:motion pos.x double 0.001 run scoreboard players get $mot.initial_x tf2.var
scoreboard players operation $mot.hitbox_x tf2.var = @s tf2.hitbox_x
scoreboard players operation $mot.hitbox_x tf2.var *= $mot.sign_x tf2.var
scoreboard players operation $mot.head_x tf2.var = @s tf2.x
scoreboard players operation $mot.tail_x tf2.var = @s tf2.x
scoreboard players operation $mot.head_x tf2.var += $mot.hitbox_x tf2.var
scoreboard players operation $mot.tail_x tf2.var -= $mot.hitbox_x tf2.var
scoreboard players operation $mot.hitbox_x tf2.var = $mot.head_x tf2.var
scoreboard players operation $mot.hitbox_x tf2.var /= 500 tf2.const
scoreboard players operation $mot.temp tf2.var = $mot.tail_x tf2.var
scoreboard players operation $mot.temp tf2.var /= 500 tf2.const
scoreboard players operation $mot.hitbox_x tf2.var -= $mot.temp tf2.var
execute if score $mot.hitbox_x tf2.var matches ..-1 run scoreboard players operation $mot.hitbox_x tf2.var *= -1 tf2.const
scoreboard players set $mot.delta_x tf2.var 1000000
scoreboard players operation $mot.delta_x tf2.var /= @s tf2.mot_x
execute if score @s tf2.mot_x matches 0 run scoreboard players set $mot.delta_x tf2.var 2147483647
scoreboard players operation $mot.motion_head_x tf2.var = $mot.head_x tf2.var
scoreboard players operation $mot.motion_tail_x tf2.var = $mot.tail_x tf2.var
scoreboard players operation $mot.motion_head_x tf2.var %= 500 tf2.const
scoreboard players operation $mot.motion_tail_x tf2.var %= 500 tf2.const
execute if score $mot.sign_x tf2.var matches 1 run function tf2:__private__/if_else/29
execute if score $mot.sign_x tf2.var matches 1 run function tf2:__private__/if_else/30
scoreboard players operation $mot.distance_head_x tf2.var = $mot.delta_x tf2.var
scoreboard players operation $mot.distance_tail_x tf2.var = $mot.delta_x tf2.var
scoreboard players operation $mot.distance_head_x tf2.var *= $mot.motion_head_x tf2.var
scoreboard players operation $mot.distance_tail_x tf2.var *= $mot.motion_tail_x tf2.var
scoreboard players operation $mot.distance_head_x tf2.var /= 500 tf2.const
scoreboard players operation $mot.distance_tail_x tf2.var /= 500 tf2.const
execute if score @s tf2.mot_x matches 0 run scoreboard players set $mot.distance_head_x tf2.var 2147483647
execute if score @s tf2.mot_x matches 0 run scoreboard players set $mot.distance_tail_x tf2.var 2147483647
scoreboard players set @s tf2.collision_y 0
execute if score @s tf2.mot_y matches 0.. run scoreboard players set $mot.sign_y tf2.var 1
execute if score @s tf2.mot_y matches ..-1 run scoreboard players set $mot.sign_y tf2.var -1
scoreboard players operation @s tf2.mot_y *= $mot.sign_y tf2.var
scoreboard players operation $mot.initial_y tf2.var = @s tf2.y
scoreboard players operation $mot.initial_y tf2.var -= @s tf2.hitbox_y
scoreboard players operation $mot.subblock_y tf2.var = $mot.initial_y tf2.var
scoreboard players operation $mot.subblock_y tf2.var %= 1000 tf2.const
scoreboard players operation $mot.subblock_y tf2.var /= 500 tf2.const
execute store result storage tf2:motion pos.y double 0.001 run scoreboard players get $mot.initial_y tf2.var
scoreboard players operation $mot.hitbox_y tf2.var = @s tf2.hitbox_y
scoreboard players operation $mot.hitbox_y tf2.var *= $mot.sign_y tf2.var
scoreboard players operation $mot.head_y tf2.var = @s tf2.y
scoreboard players operation $mot.tail_y tf2.var = @s tf2.y
scoreboard players operation $mot.head_y tf2.var += $mot.hitbox_y tf2.var
scoreboard players operation $mot.tail_y tf2.var -= $mot.hitbox_y tf2.var
scoreboard players operation $mot.hitbox_y tf2.var = $mot.head_y tf2.var
scoreboard players operation $mot.hitbox_y tf2.var /= 500 tf2.const
scoreboard players operation $mot.temp tf2.var = $mot.tail_y tf2.var
scoreboard players operation $mot.temp tf2.var /= 500 tf2.const
scoreboard players operation $mot.hitbox_y tf2.var -= $mot.temp tf2.var
execute if score $mot.hitbox_y tf2.var matches ..-1 run scoreboard players operation $mot.hitbox_y tf2.var *= -1 tf2.const
scoreboard players set $mot.delta_y tf2.var 1000000
scoreboard players operation $mot.delta_y tf2.var /= @s tf2.mot_y
execute if score @s tf2.mot_y matches 0 run scoreboard players set $mot.delta_y tf2.var 2147483647
scoreboard players operation $mot.motion_head_y tf2.var = $mot.head_y tf2.var
scoreboard players operation $mot.motion_tail_y tf2.var = $mot.tail_y tf2.var
scoreboard players operation $mot.motion_head_y tf2.var %= 500 tf2.const
scoreboard players operation $mot.motion_tail_y tf2.var %= 500 tf2.const
execute if score $mot.sign_y tf2.var matches 1 run function tf2:__private__/if_else/31
execute if score $mot.sign_y tf2.var matches 1 run function tf2:__private__/if_else/32
scoreboard players operation $mot.distance_head_y tf2.var = $mot.delta_y tf2.var
scoreboard players operation $mot.distance_tail_y tf2.var = $mot.delta_y tf2.var
scoreboard players operation $mot.distance_head_y tf2.var *= $mot.motion_head_y tf2.var
scoreboard players operation $mot.distance_tail_y tf2.var *= $mot.motion_tail_y tf2.var
scoreboard players operation $mot.distance_head_y tf2.var /= 500 tf2.const
scoreboard players operation $mot.distance_tail_y tf2.var /= 500 tf2.const
execute if score @s tf2.mot_y matches 0 run scoreboard players set $mot.distance_head_y tf2.var 2147483647
execute if score @s tf2.mot_y matches 0 run scoreboard players set $mot.distance_tail_y tf2.var 2147483647
scoreboard players set @s tf2.collision_z 0
execute if score @s tf2.mot_z matches 0.. run scoreboard players set $mot.sign_z tf2.var 1
execute if score @s tf2.mot_z matches ..-1 run scoreboard players set $mot.sign_z tf2.var -1
scoreboard players operation @s tf2.mot_z *= $mot.sign_z tf2.var
scoreboard players operation $mot.initial_z tf2.var = @s tf2.z
scoreboard players operation $mot.initial_z tf2.var -= @s tf2.hitbox_z
scoreboard players operation $mot.subblock_z tf2.var = $mot.initial_z tf2.var
scoreboard players operation $mot.subblock_z tf2.var %= 1000 tf2.const
scoreboard players operation $mot.subblock_z tf2.var /= 500 tf2.const
execute store result storage tf2:motion pos.z double 0.001 run scoreboard players get $mot.initial_z tf2.var
scoreboard players operation $mot.hitbox_z tf2.var = @s tf2.hitbox_z
scoreboard players operation $mot.hitbox_z tf2.var *= $mot.sign_z tf2.var
scoreboard players operation $mot.head_z tf2.var = @s tf2.z
scoreboard players operation $mot.tail_z tf2.var = @s tf2.z
scoreboard players operation $mot.head_z tf2.var += $mot.hitbox_z tf2.var
scoreboard players operation $mot.tail_z tf2.var -= $mot.hitbox_z tf2.var
scoreboard players operation $mot.hitbox_z tf2.var = $mot.head_z tf2.var
scoreboard players operation $mot.hitbox_z tf2.var /= 500 tf2.const
scoreboard players operation $mot.temp tf2.var = $mot.tail_z tf2.var
scoreboard players operation $mot.temp tf2.var /= 500 tf2.const
scoreboard players operation $mot.hitbox_z tf2.var -= $mot.temp tf2.var
execute if score $mot.hitbox_z tf2.var matches ..-1 run scoreboard players operation $mot.hitbox_z tf2.var *= -1 tf2.const
scoreboard players set $mot.delta_z tf2.var 1000000
scoreboard players operation $mot.delta_z tf2.var /= @s tf2.mot_z
execute if score @s tf2.mot_z matches 0 run scoreboard players set $mot.delta_z tf2.var 2147483647
scoreboard players operation $mot.motion_head_z tf2.var = $mot.head_z tf2.var
scoreboard players operation $mot.motion_tail_z tf2.var = $mot.tail_z tf2.var
scoreboard players operation $mot.motion_head_z tf2.var %= 500 tf2.const
scoreboard players operation $mot.motion_tail_z tf2.var %= 500 tf2.const
execute if score $mot.sign_z tf2.var matches 1 run function tf2:__private__/if_else/33
execute if score $mot.sign_z tf2.var matches 1 run function tf2:__private__/if_else/34
scoreboard players operation $mot.distance_head_z tf2.var = $mot.delta_z tf2.var
scoreboard players operation $mot.distance_tail_z tf2.var = $mot.delta_z tf2.var
scoreboard players operation $mot.distance_head_z tf2.var *= $mot.motion_head_z tf2.var
scoreboard players operation $mot.distance_tail_z tf2.var *= $mot.motion_tail_z tf2.var
scoreboard players operation $mot.distance_head_z tf2.var /= 500 tf2.const
scoreboard players operation $mot.distance_tail_z tf2.var /= 500 tf2.const
execute if score @s tf2.mot_z matches 0 run scoreboard players set $mot.distance_head_z tf2.var 2147483647
execute if score @s tf2.mot_z matches 0 run scoreboard players set $mot.distance_tail_z tf2.var 2147483647
function tf2:motion/initial_position with storage tf2:motion pos
scoreboard players set @s tf2.collision 0
execute unless score @s tf2.collision_x matches 0 run scoreboard players set @s tf2.collision 1
execute unless score @s tf2.collision_y matches 0 run scoreboard players set @s tf2.collision 1
execute unless score @s tf2.collision_z matches 0 run scoreboard players set @s tf2.collision 1
execute if score @s tf2.collision matches 1 if score @s tf2.halt matches 1 run function tf2:__private__/if_else/38
scoreboard players operation $mot.motion_head_x tf2.var < @s tf2.mot_x
scoreboard players operation $mot.motion_head_x tf2.var *= $mot.sign_x tf2.var
scoreboard players operation @s tf2.x += $mot.motion_head_x tf2.var
execute store result storage tf2:motion pos.x double 0.001 run scoreboard players get @s tf2.x
scoreboard players operation $mot.motion_head_y tf2.var < @s tf2.mot_y
scoreboard players operation $mot.motion_head_y tf2.var *= $mot.sign_y tf2.var
scoreboard players operation @s tf2.y += $mot.motion_head_y tf2.var
execute store result storage tf2:motion pos.y double 0.001 run scoreboard players get @s tf2.y
scoreboard players operation $mot.motion_head_z tf2.var < @s tf2.mot_z
scoreboard players operation $mot.motion_head_z tf2.var *= $mot.sign_z tf2.var
scoreboard players operation @s tf2.z += $mot.motion_head_z tf2.var
execute store result storage tf2:motion pos.z double 0.001 run scoreboard players get @s tf2.z
function tf2:motion/final_position with storage tf2:motion pos
scoreboard players operation @s tf2.mot_x *= $mot.sign_x tf2.var
scoreboard players operation @s tf2.mot_y *= $mot.sign_y tf2.var
scoreboard players operation @s tf2.mot_z *= $mot.sign_z tf2.var