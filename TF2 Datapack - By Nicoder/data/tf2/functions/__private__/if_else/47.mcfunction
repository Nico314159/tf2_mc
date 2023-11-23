execute if score @s tf2.class matches 6 if score @s tf2.time_revved < @s tf2.rev_threshold run return 0
function tf2:weapons/main_fire
item modify entity @s weapon.mainhand tf2:load_crossbow
kill @e[type=arrow]