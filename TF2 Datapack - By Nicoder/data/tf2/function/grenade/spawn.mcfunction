summon item_display ~ ~ ~ {Tags:["tf2.grenade","tf2.new"],item:{id:"minecraft:blue_concrete",count:1},transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]},interpolation_duration:1,teleport_duration:1}
$scoreboard players set $mot.mot_x tf2.var $(mot_x)
$scoreboard players set $mot.mot_y tf2.var $(mot_y)
$scoreboard players set $mot.mot_z tf2.var $(mot_z)
$scoreboard players set $gren.sticky tf2.var $(sticky)
execute as @e[type=item_display,tag=tf2.grenade,tag=tf2.new,distance=..1] run function tf2:__private__/anonymous/26