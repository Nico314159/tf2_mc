data modify storage tf2.__temp__:lookup bars set from storage tf2:control_points data
scoreboard players set $goal tf2.var 6
scoreboard players operation $goal tf2.var -= $local tf2.batch_number
function tf2:find_index/loop_bars
data modify storage tf2.__temp__:lookup points set from storage tf2.__temp__:lookup bars[0]
scoreboard players set $goal tf2.var 8
scoreboard players operation $goal tf2.var -= @s tf2.index
execute store result score $length tf2.var if data storage tf2.__temp__:lookup points[]
execute unless score $length tf2.var = $goal tf2.var run function tf2:find_index/loop_points