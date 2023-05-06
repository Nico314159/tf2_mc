#> tf2:spawn/tp
#
# Teleports the player to a spawn point.
#
# @within tf2:spawn/init
# @context a marker that matches the tagged player's batch
# @handles dynamic teleportation
# @input
#   score ⟨player⟩ tf2.team
#       Team of the tagged player (1 = RED, 2 = BLU).
#   data entity @s data.map.spawn.(red/blu)[0]
#       Current spawn point of the RED/BLU team on the selected map.
# @output
#   data entity @s Pos
#       Position to teleport the tagged player.
data modify entity @s data.lastPos set from entity @s Pos
execute if entity @e[type=#tf2:player_like,tag=tf2.temp,scores={tf2.team=1},limit=1] run data modify entity @s Pos set from entity @s data.map.spawn.red[0]
execute if entity @e[type=#tf2:player_like,tag=tf2.temp,scores={tf2.team=2},limit=1] run data modify entity @s Pos set from entity @s data.map.spawn.blu[0]
tp @e[type=#tf2:player_like,tag=tf2.temp,limit=1] @s
data modify entity @s Pos set from entity @s data.lastPos