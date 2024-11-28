execute store result score @s tf2.max_health run scoreboard players set @s tf2.health 200
attribute @s minecraft:movement_speed base set 0.1122
function tf2:class/soldier/give
scoreboard players set __found_case__ tf2.var 1