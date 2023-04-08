data remove storage tf2.__temp__:lookup points[0]
execute store result score $length tf2.var if data storage tf2.__temp__:lookup points[]
execute unless score $length tf2.var = $goal tf2.var run function tf2:find_index/loop_points