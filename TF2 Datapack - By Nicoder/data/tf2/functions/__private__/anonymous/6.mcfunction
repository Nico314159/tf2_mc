data modify storage tf2.__temp__:summon Motion set value [0.0,0.0,0.0]
execute store result storage tf2.__temp__:summon Motion[0] double 0.001048 run scoreboard players get $output_vec3.X retina.__variable__
execute store result storage tf2.__temp__:summon Motion[1] double 0.001048 run scoreboard players get $output_vec3.Y retina.__variable__
execute store result storage tf2.__temp__:summon Motion[2] double 0.001048 run scoreboard players get $output_vec3.Z retina.__variable__
data modify entity @s Motion set from storage tf2.__temp__:summon Motion
tag @s remove tf2.new