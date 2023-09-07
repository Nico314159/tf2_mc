data modify storage tf2:__storage__ currentObject set from storage tf2.__temp__:check_match UUID
execute store success score __bool_result__0 tf2.var run data modify storage tf2:__storage__ currentObject set from entity @s Thrower
execute if score __bool_result__0 tf2.var matches 0 run function tf2:__private__/if_else/38