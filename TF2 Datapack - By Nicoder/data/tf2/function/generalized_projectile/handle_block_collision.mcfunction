tellraw @a {"text":" running the handle_block_collision() function...","color":"aqua","type":"text"}
execute store result score $mode tf2.var run data get entity @s item.components.minecraft:custom_data.projectile.block_collision.mode
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get $mode tf2.var
function tf2:__private__/switch_case/7/select with storage tf2:__storage__