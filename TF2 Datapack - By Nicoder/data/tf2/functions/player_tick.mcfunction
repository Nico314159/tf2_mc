scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute if entity @s[tag=!tf2.dead,y=-45,dy=5] run function tf2:__private__/if_else/33
execute if entity @s[tag=!tf2.dead,scores={tf2.health=..0}] run function tf2:death
execute if entity @s[tag=tf2.dead] run function tf2:__private__/if_else/34
execute if entity @s[tag=tf2.dead,scores={tf2.respawn_timer=..0}] run function tf2:spawn/init
execute if entity @s[gamemode=spectator] run return run tag @a remove tf2.current
scoreboard players remove @s[scores={tf2.attack_delay=0..}] tf2.attack_delay 1000
scoreboard players remove @s[scores={tf2.reload_delay=0..}] tf2.reload_delay 1000
data modify storage tf2.__temp__:check_match UUID set from entity @s UUID
tag @s add tf2.self
execute if predicate tf2:empty_hand run function tf2:__private__/if_else/37
tag @s remove tf2.self
function tf2:weapons/slot_check
execute if predicate tf2:unloaded_crossbow run function tf2:__private__/if_else/38
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get @s tf2.class
function tf2:__private__/switch_case/13/select with storage tf2:__storage__
item replace entity @s[scores={tf2.class=1..}] hotbar.8 with carrot_on_a_stick{CustomModelData:10,__item_id__:1,display:{Name:'"Change Class"'}} 1
execute store result score $_count_ tf2.var run clear @s carrot_on_a_stick{CustomModelData:10,__item_id__:1,display:{Name:'"Change Class"'}} 0
execute unless score $_count_ tf2.var matches 1 run clear @s carrot_on_a_stick{CustomModelData:10,__item_id__:1,display:{Name:'"Change Class"'}} 
execute unless score $_count_ tf2.var matches 1 run item replace entity @s[scores={tf2.class=1..}] hotbar.8 with carrot_on_a_stick{CustomModelData:10,__item_id__:1,display:{Name:'"Change Class"'}} 1
scoreboard players operation @s tf2.fall_y3 = @s tf2.fall_y2
scoreboard players operation @s tf2.fall_y2 = @s tf2.fall_y1
scoreboard players operation @s tf2.fall_y1 = @s tf2.fall_y
execute store result score @s tf2.fall_y run data get entity @s Pos[1] 100
execute if predicate tf2:grounded if score @s tf2.fall matches 1.. run function tf2:do_fall_damage
execute if score @s tf2.air matches -19 run function tf2:__private__/if_else/41
scoreboard players add @s[predicate=!tf2:submerged] tf2.time_surfaced 1
execute if score @s tf2.time_surfaced matches 40 run function tf2:__private__/if_else/42
scoreboard players set @s[predicate=tf2:submerged] tf2.time_surfaced 0
scoreboard players operation $tick_cycle tf2.var = $__global__ 0008it54g_p_join
scoreboard players operation $tick_cycle tf2.var %= 40 tf2.const
execute if score @s tf2.team = @e[type=item_display,tag=tf2.resupply,distance=..1.5,limit=1] tf2.team if score $tick_cycle tf2.var matches 0 run function tf2:class_select
tag @a remove tf2.current