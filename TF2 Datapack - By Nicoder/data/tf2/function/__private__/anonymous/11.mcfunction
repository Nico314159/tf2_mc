$summon item_display $(X) $(Y) $(Z) {item:{id:"white_dye",components:{"minecraft:item_model":"tf2:bullet"}},Tags:["tf2.visual","tf2.newest"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,$(scale)f]},interpolation_duration:-1,teleport_duration:-1}
$execute as @e[type=item_display,tag=tf2.visual,tag=tf2.newest] at @s run rotate @s facing $(endX) $(endY) $(endZ)
scoreboard players set @e[type=item_display,tag=tf2.visual,tag=tf2.newest] tf2.lifetime 4
tag @e[type=item_display,tag=tf2.visual,tag=tf2.newest] remove tf2.newest