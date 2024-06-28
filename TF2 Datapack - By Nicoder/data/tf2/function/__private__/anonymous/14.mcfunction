execute store result score $next_proj_X tf2.var run data get entity @s Pos[0] 1000
execute store result score $next_proj_Y tf2.var run data get entity @s Pos[1] 1000
execute store result score $next_proj_Z tf2.var run data get entity @s Pos[2] 1000
tag @e[type=#tf2:player_like,tag=tf2.search,dx=0,dy=0,dz=0,sort=nearest,limit=1] add tf2.in_voxel
kill