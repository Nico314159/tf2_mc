scoreboard players add @s tf2.building.ticks_idle 1
execute if score @s tf2.building.ticks_idle matches 6.. run function tf2:building/sentry/clear_target
return fail