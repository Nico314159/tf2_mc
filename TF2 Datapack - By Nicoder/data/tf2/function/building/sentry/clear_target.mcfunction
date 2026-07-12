scoreboard players reset @s tf2.building.target
scoreboard players reset $temp tf2.building.target
execute store result score @s tf2.building.last_yaw run data get entity @s Rotation[0] 100
scoreboard players set @s tf2.building.ticks_idle 0
tag @e remove tf2.sentry_target