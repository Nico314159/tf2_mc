execute store result score $mode tf2.var run data get entity @s item.components.minecraft:custom_data.projectile.entity_collision.mode
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get $mode tf2.var
function tf2:__private__/switch_case/8/select with storage tf2:__storage__