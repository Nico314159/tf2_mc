clear @s elytra{} 
scoreboard players set $x delta.api.launch 0
scoreboard players set $y delta.api.launch 7500
scoreboard players set $z delta.api.launch 0
function delta:api/launch_xyz
scoreboard players set @s tf2.elytra_detect 0
scoreboard players add @s tf2.permanent.double_jumps 1
tag @s remove tf2.can_double_jump