summon marker ~ ~ ~ {Tags:["tf2.new"]}
execute as @e[tag=tf2.new,limit=1] run function tf2:start_game/as_marker/set_nbt
data remove storage tf2:temp summon[0]
scoreboard players add $index tf2.var 1
execute if score $index tf2.var < $length tf2.var run function tf2:start_game/as_marker/loop