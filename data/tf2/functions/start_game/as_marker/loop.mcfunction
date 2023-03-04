summon marker ~ ~ ~ {Tags:["tf2.new"]}
execute as @e[tag=tf2.new,limit=1] run function tf2:start_game/as_marker/set_nbt
data remove storage tf2:temp summon[0]
execute if data storage tf2:temp summon[] run function tf2:start_game/as_marker/loop