scoreboard players operation $temp tf2.sentry.target = @s tf2.sentry.target
execute as @e[type=#tf2:player_like] if score @s tf2.player.id = $temp tf2.sentry.target run tag @s add tf2.sentry_target
execute if entity @e[tag=tf2.sentry_target,distance=20.955..] run return run function tf2:building/sentry/clear_target
execute if entity @e[tag=tf2.sentry_target,tag=tf2.dead] run return run function tf2:building/sentry/clear_target
execute store result score $x tf2.var run data get entity @s Pos[0] 100
execute store result score $y tf2.var run data get entity @s Pos[1] 100
execute store result score $z tf2.var run data get entity @s Pos[2] 100
execute store result score $input_vec3.X tf2.var run data get entity @n[tag=tf2.sentry_target] Pos[0] 100
scoreboard players operation $input_vec3.X tf2.var -= $x tf2.var
execute store result score $input_vec3.Y tf2.var run data get entity @n[tag=tf2.sentry_target] Pos[1] 100
scoreboard players operation $input_vec3.Y tf2.var -= $y tf2.var
execute store result score $input_vec3.Z tf2.var run data get entity @n[tag=tf2.sentry_target] Pos[2] 100
scoreboard players operation $input_vec3.Z tf2.var -= $z tf2.var
function tf2:math/vec_to_gimbal
execute unless score $output_pitch tf2.var matches -3000..3000 run return run function tf2:building/sentry/clear_target
execute store result score __temp0__ tf2.var run data get entity @s Rotation[1] 100
scoreboard players operation $d_pitch tf2.var = $output_pitch tf2.var
scoreboard players operation $d_pitch tf2.var -= __temp0__ tf2.var
execute store result score __temp0__ tf2.var run data get entity @s Rotation[0] 100
scoreboard players operation $d_yaw tf2.var = $output_yaw tf2.var
scoreboard players operation $d_yaw tf2.var -= __temp0__ tf2.var
execute store result score $correct_pitch tf2.var run scoreboard players set $correct_yaw tf2.var 0
execute if score $d_yaw tf2.var matches 18000.. run scoreboard players operation $d_yaw tf2.var *= -1 tf2.const
execute if score $d_yaw tf2.var matches ..-18000 run scoreboard players add $d_yaw tf2.var 36000
scoreboard players set __if_else__ tf2.var 0
execute if score $d_yaw tf2.var matches -1500..1500 run function tf2:__private__/if_else/10
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/11
scoreboard players set __if_else__ tf2.var 0
execute if score $d_pitch tf2.var matches -1500..1500 run function tf2:__private__/if_else/12
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/13
execute if score $correct_pitch tf2.var matches 1.. if score $correct_yaw tf2.var matches 1.. unless score @s tf2.attack_delay matches 1.. if score @s tf2.primary_ammo matches 1.. run function tf2:building/sentry/shoot
tag @e remove tf2.sentry_target