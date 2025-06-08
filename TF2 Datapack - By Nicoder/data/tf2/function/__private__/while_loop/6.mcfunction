data modify storage tf2:motion geo set from storage iris:data Shape[-1]
execute store result score $mot.geo_min_x tf2.var run data get storage tf2:motion geo.min[0] 1000
scoreboard players operation $mot.geo_min_x tf2.var += $mot.voxel_x tf2.var
execute store result score $mot.geo_max_x tf2.var run data get storage tf2:motion geo.max[0] 1000
scoreboard players operation $mot.geo_max_x tf2.var += $mot.voxel_x tf2.var
execute store result score $mot.geo_min_y tf2.var run data get storage tf2:motion geo.min[1] 1000
scoreboard players operation $mot.geo_min_y tf2.var += $mot.voxel_y tf2.var
execute store result score $mot.geo_max_y tf2.var run data get storage tf2:motion geo.max[1] 1000
scoreboard players operation $mot.geo_max_y tf2.var += $mot.voxel_y tf2.var
execute store result score $mot.geo_min_z tf2.var run data get storage tf2:motion geo.min[2] 1000
scoreboard players operation $mot.geo_min_z tf2.var += $mot.voxel_z tf2.var
execute store result score $mot.geo_max_z tf2.var run data get storage tf2:motion geo.max[2] 1000
scoreboard players operation $mot.geo_max_z tf2.var += $mot.voxel_z tf2.var
execute store result score $mot.is_entity tf2.var if data storage tf2:motion geo{type:"ENTITY"}
scoreboard players set __if_else__ tf2.var 0
execute if score $mot.sign_x tf2.var matches 1 run function tf2:__private__/if_else/52
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/53
scoreboard players operation $mot.distance_x tf2.var *= $mot.distance tf2.var
scoreboard players operation $mot.distance_x tf2.var /= $mot.motion_x tf2.var
execute unless score $mot.motion_x tf2.var matches 0 if score $mot.distance_x tf2.var matches 0.. if score $mot.distance_x tf2.var <= $mot.distance tf2.var run function tf2:__private__/if_else/57
scoreboard players set __if_else__ tf2.var 0
execute if score $mot.sign_y tf2.var matches 1 run function tf2:__private__/if_else/58
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/59
scoreboard players operation $mot.distance_y tf2.var *= $mot.distance tf2.var
scoreboard players operation $mot.distance_y tf2.var /= $mot.motion_y tf2.var
execute unless score $mot.motion_y tf2.var matches 0 if score $mot.distance_y tf2.var matches 0.. if score $mot.distance_y tf2.var <= $mot.distance tf2.var run function tf2:__private__/if_else/63
scoreboard players set __if_else__ tf2.var 0
execute if score $mot.sign_z tf2.var matches 1 run function tf2:__private__/if_else/64
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/65
scoreboard players operation $mot.distance_z tf2.var *= $mot.distance tf2.var
scoreboard players operation $mot.distance_z tf2.var /= $mot.motion_z tf2.var
execute unless score $mot.motion_z tf2.var matches 0 if score $mot.distance_z tf2.var matches 0.. if score $mot.distance_z tf2.var <= $mot.distance tf2.var run function tf2:__private__/if_else/69
data remove storage iris:data Shape[-1]
execute if data storage iris:data Shape[] run function tf2:__private__/while_loop/6