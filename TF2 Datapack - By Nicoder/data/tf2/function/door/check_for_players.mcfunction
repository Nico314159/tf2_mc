execute if score @s tf2.door.state matches 0..1 run return run tellraw @a ["",{"text":"[ERROR] ","color":"dark_red","type":"text"},{"text":"Unexpected value for door state: ","color":"red","type":"text"},{"score":{"name":"@s","objective":"tf2.door.state"},"color":"red","type":"score"}]
scoreboard players set $wrong tf2.team 4
scoreboard players operation $wrong tf2.team -= @s tf2.door.state
$return run execute positioned ~-.5 ~-.5 ~-.5 as @a[dx=$(size_x),dy=$(size_y),dz=$(size_z),gamemode=!spectator] unless score @s tf2.team = $wrong tf2.team