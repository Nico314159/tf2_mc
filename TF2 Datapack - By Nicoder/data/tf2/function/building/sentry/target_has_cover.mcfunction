scoreboard players add @s tf2.sentry.ticks_idle 1
execute if score @s tf2.sentry.ticks_idle matches 5.. run function tf2:building/sentry/clear_target
return fail