scoreboard players reset @s tf2.heal_target
scoreboard players set @s tf2.ubercharge 0
execute if entity @s[tag=!tf2.uber_source] run return fail
tag @s remove tf2.uber_source
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air