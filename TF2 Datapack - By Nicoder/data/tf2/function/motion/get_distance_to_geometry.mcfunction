data modify storage iris:data Shape set value []
execute unless block ~ ~ ~ #tf2:motion_passable run function iris:get_hitbox/block
execute if score @s tf2.consider_entities matches 1.. run function tf2:__private__/if_else/50
execute if data storage iris:data Shape[] run function tf2:__private__/while_loop/6