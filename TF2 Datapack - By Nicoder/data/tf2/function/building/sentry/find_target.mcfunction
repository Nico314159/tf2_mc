scoreboard players operation $temp tf2.team = @s tf2.team
execute as @e[type=#tf2:player_like,distance=..20.955,tag=!tf2.dead] unless entity @s[gamemode=spectator] unless score @s tf2.team = $temp tf2.team run tag @s add tf2.enemy_in_range
execute unless entity @e[tag=tf2.enemy_in_range] run return run function tf2:building/sentry/swivel
scoreboard players set @s tf2.sentry.ticks_idle 0
scoreboard players operation @s tf2.sentry.target = @n[tag=tf2.enemy_in_range] tf2.player.id
tag @e[type=#tf2:player_like] remove tf2.enemy_in_range
return 1