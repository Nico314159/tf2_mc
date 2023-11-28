execute if entity @s[tag=!tf2.dead,y=-45,dy=5] run function tf2:__private__/if_else/40
execute if entity @s[tag=!tf2.dead,scores={tf2.health=..0}] run function tf2:death
execute if entity @s[tag=tf2.dead] run function tf2:__private__/if_else/41
execute if entity @s[tag=tf2.dead,scores={tf2.respawn_timer=..0}] run function tf2:spawn/init
execute if entity @s[gamemode=spectator] run return 1
scoreboard players remove @s[scores={tf2.attack_delay=0..}] tf2.attack_delay 1000
scoreboard players remove @s[scores={tf2.reload_delay=0..}] tf2.reload_delay 1000
data modify storage tf2.__temp__:check_match UUID set from entity @s UUID
tag @s add tf2.self
execute if predicate tf2:empty_hand run function tf2:__private__/if_else/44
tag @s remove tf2.self
function tf2:weapons/slot_check
execute if predicate tf2:unloaded_crossbow run function tf2:__private__/if_else/45
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get @s tf2.class
function tf2:__private__/switch_case/13/select with storage tf2:__storage__