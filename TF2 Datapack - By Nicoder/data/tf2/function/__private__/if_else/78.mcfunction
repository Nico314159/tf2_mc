scoreboard players set $surface_x tf2.var 0
scoreboard players set $surface_y tf2.var 0
scoreboard players operation $surface_z tf2.var = @s tf2.collision_z
function tf2:grenade/roll