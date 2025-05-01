data modify entity @s transformation set from storage tf2:summon matrix
execute store result storage tf2:vars distance double 0.01 run data get entity @s transformation.scale[0]
kill