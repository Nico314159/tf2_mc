tag @s remove tf2.new
execute if score @s tf2.health matches ..0 run function tf2:building/dispenser/die
execute if entity @s[tag=tf2.sapped] run return fail
scoreboard players operation $temp tf2.team = @s tf2.team
execute as @e[type=#tf2:player_like,distance=..6.858,tag=!tf2.dead] unless entity @s[gamemode=spectator] if score @s tf2.team = $temp tf2.team run tag @s add tf2.ally_in_range
execute as @e[type=#tf2:player_like,distance=..6.858,tag=!tf2.dead,tag=tf2.disguised] unless entity @s[gamemode=spectator] if score @s tf2.disguise.team = $temp tf2.team run tag @s add tf2.ally_in_range
function tf2:building/dispenser/prune_occluded_targets
function tf2:building/dispenser/calculate_amounts
execute as @e[tag=tf2.ally_in_range] run function tf2:building/dispenser/heal