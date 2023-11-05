execute store result score @s tf2.max_health run scoreboard players set @s tf2.health 300
attribute @s minecraft:generic.movement_speed base set 0.084
function tf2:class/heavy/give
scoreboard players set __found_case__ tf2.var 1