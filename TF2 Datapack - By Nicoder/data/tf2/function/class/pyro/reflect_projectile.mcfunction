execute on vehicle run data modify entity @s Owner set from entity @p[tag=origin] UUID
scoreboard players operation @s tf2.team = @p[tag=origin] tf2.team
data modify storage tf2:vars Motion set from entity @s item.components.minecraft:custom_data.Motion
scoreboard players set $motion_length tf2.var 0
execute store result score $temp tf2.var run data get storage tf2:vars Motion[0] 480
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $motion_length tf2.var += $temp tf2.var
execute store result score $temp tf2.var run data get storage tf2:vars Motion[1] 480
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $motion_length tf2.var += $temp tf2.var
execute store result score $temp tf2.var run data get storage tf2:vars Motion[2] 480
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $motion_length tf2.var += $temp tf2.var
execute as @p[tag=origin] run function tf2:math/facing_vec
scoreboard players set $facing_length tf2.var 0
scoreboard players operation $temp tf2.var = $output_vec3.X retina.__variable__
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $facing_length tf2.var += $temp tf2.var
scoreboard players operation $temp tf2.var = $output_vec3.Y retina.__variable__
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $facing_length tf2.var += $temp tf2.var
scoreboard players operation $temp tf2.var = $output_vec3.Z retina.__variable__
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $facing_length tf2.var += $temp tf2.var
scoreboard players operation $output_vec3.X retina.__variable__ *= $motion_length tf2.var
scoreboard players operation $output_vec3.X retina.__variable__ /= $facing_length tf2.var
scoreboard players operation $output_vec3.Y retina.__variable__ *= $motion_length tf2.var
scoreboard players operation $output_vec3.Y retina.__variable__ /= $facing_length tf2.var
scoreboard players operation $output_vec3.Z retina.__variable__ *= $motion_length tf2.var
scoreboard players operation $output_vec3.Z retina.__variable__ /= $facing_length tf2.var
execute store result storage tf2:vars Motion[0] double 0.0020833 run scoreboard players get $output_vec3.X retina.__variable__
execute store result storage tf2:vars Motion[1] double 0.0020833 run scoreboard players get $output_vec3.Y retina.__variable__
execute store result storage tf2:vars Motion[2] double 0.0020833 run scoreboard players get $output_vec3.Z retina.__variable__
data modify entity @s item.components.minecraft:custom_data.Motion set from storage tf2:vars Motion
data modify entity @s Rotation[0] set from entity @p[tag=origin] Rotation[0]
data modify entity @s Rotation[1] set from entity @p[tag=origin] Rotation[1]
say airblasted a projectile!