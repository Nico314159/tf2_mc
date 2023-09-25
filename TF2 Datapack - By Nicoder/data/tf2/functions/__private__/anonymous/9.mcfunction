$summon text_display $(X) $(Y) $(Z) {billboard:"center",text:'{"color":"red","text":"-$(value)"}',Tags:["tf2.damage_number","tf2.newest"],Motion:[0.0,0.1,0.0]}
scoreboard players set @e[type=text_display,tag=tf2.damage_number,tag=tf2.newest] tf2.timer 10
tag @e[type=text_display,tag=tf2.damage_number,tag=tf2.newest] remove tf2.newest