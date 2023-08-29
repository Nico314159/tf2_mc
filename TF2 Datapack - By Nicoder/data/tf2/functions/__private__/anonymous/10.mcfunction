scoreboard players remove @s[scores={tf2.attack_delay=0..}] tf2.attack_delay 1000
scoreboard players remove @s[scores={tf2.reload_delay=0..}] tf2.reload_delay 1000
data modify storage tf2.__temp__:check_match UUID set from entity @s UUID
tag @s add tf2.self
execute as @e[type=item,tag=!tf2.map_item,distance=..2] run function tf2:__private__/anonymous/8
execute if predicate tf2:empty_hand as @e[type=snowball] run function tf2:__private__/anonymous/9
tag @s remove tf2.self
scoreboard players operation $class tf2.var = @s tf2.class
function tf2:__private__/switch_case/311