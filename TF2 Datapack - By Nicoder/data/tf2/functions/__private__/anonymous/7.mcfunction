scoreboard players remove @s[scores={tf2.attack_delay=0..}] tf2.attack_delay 1000
execute if entity @e[type=item,tag=!tf2.map_item] run function tf2:weapons/reload
scoreboard players operation $class tf2.var = @s tf2.class
function tf2:__private__/switch_case/306