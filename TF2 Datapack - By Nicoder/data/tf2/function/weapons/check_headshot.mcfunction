execute store result score $feet_Y tf2.var run data get entity @n[tag=iris.targeted_entity] Pos[1]
execute store result score $intersection_Y tf2.var run data get storage iris:args y
execute if score $intersection_Y tf2.var matches ..-1 run scoreboard players remove $intersection_Y tf2.var 1
execute if score $intersection_Y tf2.var <= $feet_Y tf2.var run return 0
execute store result score $top_Y tf2.var run data get storage iris:output TargetedFace.max[1] 1000000
execute store result score $intersection_Y tf2.var run data get storage iris:output TargetPosition.point[1] 1000000
scoreboard players operation $diff_Y tf2.var = $top_Y tf2.var
scoreboard players operation $diff_Y tf2.var -= $intersection_Y tf2.var
execute if score $diff_Y tf2.var matches ..499999 run return 1
return 0