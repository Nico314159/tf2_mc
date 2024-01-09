function tf2:__private__/anonymous/18 with storage tf2.__temp__:summon pickups[-1]
execute store result score @s tf2.size run data get storage tf2.__temp__:summon pickups[-1].size
scoreboard players set @s tf2.model_number 10
scoreboard players operation @s tf2.model_number += @s tf2.size
scoreboard players add @s[tag=tf2.ammo_pack] tf2.model_number 10
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number
scoreboard players set @s tf2.respawn_timer 1
tag @s remove tf2.new