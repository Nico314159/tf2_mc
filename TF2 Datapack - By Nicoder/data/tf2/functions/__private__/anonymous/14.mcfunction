scoreboard players remove @s[scores={tf2.attack_delay=0..}] tf2.attack_delay 1000
scoreboard players remove @s[scores={tf2.reload_delay=0..}] tf2.reload_delay 1000
data modify storage tf2.__temp__:check_match UUID set from entity @s UUID
tag @s add tf2.self
execute if predicate tf2:empty_hand run function tf2:__private__/if_else/44
tag @s remove tf2.self
execute if predicate tf2:unloaded_crossbow run function tf2:__private__/if_else/45
function tf2:weapons/slot_check
scoreboard players operation $class tf2.var = @s tf2.class
function tf2:__private__/switch_case/324