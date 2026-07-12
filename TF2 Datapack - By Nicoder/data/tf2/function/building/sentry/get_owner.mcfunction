scoreboard players operation $owner tf2.var = @s tf2.building.owner
execute as @a[tag=tf2.is_playing] if score @s tf2.player.id = $owner tf2.var run tag @s add tf2.owner