execute store result score $in_range_before tf2.var if entity @e[tag=tf2.ally_in_range]
execute at @s positioned ~ ~.25 ~ facing entity @n[tag=tf2.ally_in_range] eyes run function tf2:raycast/informational
execute as @n[tag=tf2.ally_in_range] run tag @s[tag=!iris.targeted_entity] remove tf2.ally_in_range
execute store result score $in_range_after tf2.var if entity @e[tag=tf2.ally_in_range]
execute if score $in_range_after tf2.var = $in_range_before tf2.var run return 1
execute if score $in_range_after tf2.var matches 0 run return 0
return run function tf2:building/dispenser/prune_occluded_targets