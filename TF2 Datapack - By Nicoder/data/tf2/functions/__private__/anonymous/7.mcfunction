$scoreboard players add $global_$(i) tf2.session 1
$scoreboard players operation @s tf2.session = $global_$(i) tf2.session
$data modify entity @s data.map set from storage tf2:maps $(map_id)