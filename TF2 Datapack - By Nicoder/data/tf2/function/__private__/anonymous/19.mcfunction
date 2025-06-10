data modify entity @s Pos set from storage tf2:summon pickups[-1].Pos
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number
tag @s remove tf2.new
function tf2:session/sync with storage tf2:index