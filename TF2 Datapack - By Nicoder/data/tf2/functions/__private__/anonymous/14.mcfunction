execute store result score $proj_X tf2.var run data get entity @s Pos[0] 1000
execute store result score $proj_Y tf2.var run data get entity @s Pos[1] 1000
execute store result score $proj_Z tf2.var run data get entity @s Pos[2] 1000
data modify entity @s Pos set from storage tf2.__temp__:vars motion
execute positioned 0.0 0 0.0 facing entity @s feet run tp @s 0 -10000 0 ~ ~
execute rotated as @s positioned ^ ^ ^0.5 align xyz summon marker run function tf2:__private__/anonymous/13
kill