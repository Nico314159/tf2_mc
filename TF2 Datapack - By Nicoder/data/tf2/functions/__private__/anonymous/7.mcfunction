data modify entity @s Rotation[0] set from storage tf2.__temp__:summon projectile.yaw
data modify entity @s Rotation[1] set from storage tf2.__temp__:summon projectile.pitch
scoreboard players operation @s tf2.team = $temp tf2.team
tag @s remove tf2.new