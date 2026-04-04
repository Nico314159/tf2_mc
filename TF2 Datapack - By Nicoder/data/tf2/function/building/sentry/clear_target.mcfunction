scoreboard players reset @s tf2.sentry.target
scoreboard players reset $temp tf2.sentry.target
execute store result score @s tf2.sentry.last_yaw run data get entity @s Rotation[0] 100
scoreboard players set @s tf2.sentry.ticks_idle 0
tag @e remove tf2.sentry_target