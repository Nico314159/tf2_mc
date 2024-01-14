scoreboard players operation $temp tf2.team = @s tf2.team
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute store result score $input_pitch retina.__variable__ run data get entity @s Rotation[1] 10
execute store result score $input_yaw retina.__variable__ run data get entity @s Rotation[0] 10
function retina:math/gimbal_to_vec
data modify storage tf2.__temp__:summon projectile set value {X:0.0,Y:0.0,Z:0.0,yaw:0.0,pitch:0.0}
execute store result storage tf2.__temp__:summon projectile.X double 0.001048 run scoreboard players get $output_vec3.X retina.__variable__
execute store result storage tf2.__temp__:summon projectile.Y double 0.001048 run scoreboard players get $output_vec3.Y retina.__variable__
execute store result storage tf2.__temp__:summon projectile.Z double 0.001048 run scoreboard players get $output_vec3.Z retina.__variable__
execute store result storage tf2.__temp__:summon projectile.yaw double 0.1 run scoreboard players get $input_yaw retina.__variable__
execute store result storage tf2.__temp__:summon projectile.pitch double 0.1 run scoreboard players get $input_pitch retina.__variable__
data modify storage tf2.__temp__:summon projectile.owner set from entity @s UUID
execute at @s anchored eyes run function tf2:__private__/anonymous/6 with storage tf2.__temp__:summon projectile
execute as @e[type=item_display,tag=tf2.new,tag=tf2.projectile,limit=1,sort=nearest] run function tf2:__private__/anonymous/7
execute as @e[type=arrow,tag=tf2.new,tag=tf2.projectile,limit=1,sort=nearest] run function tf2:__private__/anonymous/8