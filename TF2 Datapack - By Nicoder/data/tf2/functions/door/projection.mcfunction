data modify storage tf2:__storage__ currentObject set from storage tf2:lookup entity.item.components.minecraft:custom_data.path
execute store success score __bool_result__1 tf2.var run data modify storage tf2:__storage__ currentObject set value linear
execute unless score __bool_result__1 tf2.var matches 0 run return fail
execute store result entity @s transformation.translation[1] float 0.0001 run scoreboard players get @s tf2.door.pos