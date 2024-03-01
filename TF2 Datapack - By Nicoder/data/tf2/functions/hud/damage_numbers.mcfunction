$execute positioned 0 0.4 0 run summon text_display ~$(X) ~$(Y) ~$(Z) {billboard:"center",text:'{"color":"red", "bold":true, "text":"-$(value)"}',Tags:["tf2.visual","tf2.newest"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}
scoreboard players set @e[type=text_display,tag=tf2.visual,tag=tf2.newest] tf2.lifetime 12
tag @e[type=text_display,tag=tf2.visual,tag=tf2.newest] remove tf2.newest
data remove storage tf2.__temp__:summon number