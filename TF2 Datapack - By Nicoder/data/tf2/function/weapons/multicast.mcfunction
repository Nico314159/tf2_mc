execute store result score $horizontal_count tf2.var run data get storage tf2:multicast HorizontalCount 10
execute store result score $vertical_count tf2.var run data get storage tf2:multicast VerticalCount 10
execute store result score $centered_count tf2.var run data get storage tf2:multicast CenteredCount 1
execute if score $horizontal_count tf2.var matches ..0 run return run tellraw @a ["",{"text":"[Error] ","color":"dark_red","type":"text"},{"text":"HorizontalCount storage has invalid value of ","color":"red","type":"text"},{"score":{"name":"$horizontal_count","objective":"tf2.var"},"color":"red","type":"score"}]
execute if score $vertical_count tf2.var matches ..0 run return run tellraw @a ["",{"text":"[Error] ","color":"dark_red","type":"text"},{"text":"VerticalCount storage has invalid value of ","color":"red","type":"text"},{"score":{"name":"$vertical_count","objective":"tf2.var"},"color":"red","type":"score"}]
execute if score $centered_count tf2.var matches ..-1 run return run tellraw @a ["",{"text":"[Error] ","color":"dark_red","type":"text"},{"text":"CenteredCount storage has invalid value of ","color":"red","type":"text"},{"score":{"name":"$centered_count","objective":"tf2.var"},"color":"red","type":"score"}]
execute store result score $spread_least tf2.var run data get storage tf2:multicast SpreadFactor[0]
execute store result score $spread_most tf2.var run data get storage tf2:multicast SpreadFactor[1]
scoreboard players set $single_call iris.__variable__ 0
tag @e remove iris.targeted_entity
scoreboard players reset * iris.hit
kill @e[type=marker,tag=iris.endpoint]
execute store result score $input_pitch tf2.var run data get entity @s Rotation[1] 10
execute store result score $input_yaw tf2.var run data get entity @s Rotation[0] 10
function tf2:math/gimbal_to_matrix
scoreboard players set $i tf2.var 0
execute if score $i tf2.var < $horizontal_count tf2.var run function tf2:__private__/for_loop/0
scoreboard players set $k tf2.var 0
execute if score $k tf2.var < $centered_count tf2.var run function tf2:__private__/for_loop/2
scoreboard players set $single_call iris.__variable__ 1