tag @s add tf2.self
execute summon marker run function tf2:raycast/to_self
data modify storage tf2:vars distance set from storage iris:output Distance
tag @s remove tf2.self