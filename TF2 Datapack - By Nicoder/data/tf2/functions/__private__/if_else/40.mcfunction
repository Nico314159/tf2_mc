scoreboard players remove @s tf2.respawn_timer 1
scoreboard players operation @s tf2.respawn_timer.sec = @s tf2.respawn_timer
scoreboard players add @s tf2.respawn_timer.sec 19
scoreboard players operation @s tf2.respawn_timer.sec /= 20 tf2.const
title @s title {"text":"You died!","color":"white"}
title @s subtitle ["",{"text":"Respawn in... ","color":"gray"},{"score":{"name":"@s","objective":"tf2.respawn_timer.sec"},"bold":true,"color":"dark_gray"}]