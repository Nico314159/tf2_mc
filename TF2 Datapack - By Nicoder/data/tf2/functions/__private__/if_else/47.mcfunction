kill @e[type=arrow]
execute unless predicate tf2:ammo_in_clip run return 0
execute if score @s tf2.attack_delay matches 1.. run return 0
execute if score @s tf2.class matches 6 if score @s tf2.current_slot matches 0 if score @s tf2.time_revved < @s tf2.rev_threshold run return 0
function tf2:weapons/main_fire