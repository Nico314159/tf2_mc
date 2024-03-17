execute store result score $should_animate tf2.var run function tf2:weapons/reload
execute unless score $should_animate tf2.var matches 1.. run return fail
item replace entity @s enderchest.0 from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.mainhand from entity @s enderchest.0
return 1