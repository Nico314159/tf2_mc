scoreboard players set @s tf2.index 70
function tf2:objectives/control_point/find_index/main
execute if score $highest tf2.index matches 0 run data modify storage tf2.__temp__:lookup points[0].left set value '430'
execute if score $highest tf2.index matches 0 run data modify storage tf2.__temp__:lookup points[0].mid set value '60'
execute if score $highest tf2.index matches 0..10 run data modify storage tf2.__temp__:lookup points[0].right set value '[""]'
execute unless score $highest tf2.index matches 0..10 run data modify storage tf2.__temp__:lookup points[0].left set value '[""]'

execute if score $highest tf2.index matches 10 run data modify storage tf2.__temp__:lookup points[0].left set value '20'
execute if score $highest tf2.index matches 10 run data modify storage tf2.__temp__:lookup points[0].mid set value '6420'

execute if score $highest tf2.index matches 20 run data modify storage tf2.__temp__:lookup points[0].mid set value '6530'
execute if score $highest tf2.index matches 20 run data modify storage tf2.__temp__:lookup points[0].right set value '3210'

execute if score $highest tf2.index matches 30 run data modify storage tf2.__temp__:lookup points[0].mid set value '654320'
execute if score $highest tf2.index matches 30 run data modify storage tf2.__temp__:lookup points[0].right set value '510'

execute if score $highest tf2.index matches 40 run data modify storage tf2.__temp__:lookup points[0].mid set value '740'
execute if score $highest tf2.index matches 40 run data modify storage tf2.__temp__:lookup points[0].right set value '54210'
function tf2:objectives/control_point/find_index/reinsert/main
scoreboard players reset @s tf2.index