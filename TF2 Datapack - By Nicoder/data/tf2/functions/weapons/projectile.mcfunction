execute store result score $input_pitch retina.__variable__ run data get entity @s Rotation[1] 10
execute store result score $input_yaw retina.__variable__ run data get entity @s Rotation[0] 10
function retina:math/gimbal_to_vec
execute at @s anchored eyes run summon firework_rocket ~ ~ ~ {Life:false,LifeTime:2147483647,ShotAtAngle:true,NoGravity:true,Motion:[0.0,0.0,0.0],Tags:["tf2.new"]}
execute as @e[type=firework_rocket,tag=tf2.new,sort=nearest,limit=1] run function tf2:__private__/anonymous/6
