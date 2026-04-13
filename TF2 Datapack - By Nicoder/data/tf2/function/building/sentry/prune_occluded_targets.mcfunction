execute store result score $in_range_before tf2.var if entity @e[tag=tf2.enemy_in_range]
execute at @s as @n[tag=tf2.enemy_in_range] run function tf2:__private__/anonymous/4
execute as @n[tag=tf2.enemy_in_range] run tag @s[tag=!iris.targeted_entity] remove tf2.enemy_in_range
execute store result score $in_range_after tf2.var if entity @e[tag=tf2.enemy_in_range]
execute if score $in_range_after tf2.var = $in_range_before tf2.var run return 1
execute if score $in_range_after tf2.var matches 0 run return 0
return run function tf2:building/sentry/prune_occluded_targets