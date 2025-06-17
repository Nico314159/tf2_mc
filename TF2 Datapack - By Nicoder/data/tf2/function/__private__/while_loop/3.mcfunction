summon area_effect_cloud ~ ~-1.5 ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Invulnerable:1b,Tags:["tf2.new"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0.0f,Passengers:[{id:"minecraft:item",NoGravity:1b,Invulnerable:1b,Tags:["tf2.pickup","tf2.new"],Age:-32768s,PickupDelay:32767s,Item:{id:"minecraft:white_dye",count:1b,components:{"minecraft:custom_model_data":{floats:[0f]}}}}]}
execute as @e[type=area_effect_cloud,tag=tf2.new] run function tf2:__private__/anonymous/20
execute as @e[type=item,tag=tf2.new] run function tf2:__private__/anonymous/22
data remove storage tf2:summon pickups[-1]
execute if data storage tf2:summon pickups[] run function tf2:__private__/while_loop/3