kill @e[type=arrow,tag=!tf2.projectile]
clear @s arrow
execute unless predicate tf2:ammo_in_clip run return 0
function tf2:weapons/main_fire