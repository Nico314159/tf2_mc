function tf2:__private__/anonymous/21 with storage tf2:summon pickups[-1]
execute store result score @s tf2.size run data get storage tf2:summon pickups[-1].size
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number
scoreboard players set @s tf2.respawn_timer 1
tag @s remove tf2.new
function tf2:session/sync with storage tf2:index