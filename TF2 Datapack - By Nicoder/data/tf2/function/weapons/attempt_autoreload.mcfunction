execute unless function tf2:weapons/reload run return fail
item replace entity @s enderchest.0 from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.mainhand from entity @s enderchest.0
return 1