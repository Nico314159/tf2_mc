scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
scoreboard players operation @s[type=player] tf2.last_x = @s tf2.now_x
execute store result score @s[type=player] tf2.now_x run data get entity @s Pos[0] 100
scoreboard players operation @s[type=player] tf2.last_z = @s tf2.now_z
execute store result score @s[type=player] tf2.now_z run data get entity @s Pos[2] 100
execute if entity @s[tag=!tf2.dead,y=-45,dy=5] run function tf2:__private__/if_else/55
execute if entity @s[tag=tf2.dead] run function tf2:__private__/if_else/56
execute if entity @s[tag=tf2.dead,scores={tf2.respawn_timer=..0}] run function tf2:spawn/init
execute unless entity @s[scores={tf2.class=1},tag=tf2.disguised,gamemode=!spectator] run function tf2:class/spy/nametag/delete
execute if entity @s[gamemode=spectator] run return run tag @a remove tf2.current
scoreboard players remove @s[scores={tf2.attack_delay=0..}] tf2.attack_delay 1000
scoreboard players remove @s[scores={tf2.reload_delay=0..}] tf2.reload_delay 1000
scoreboard players add @s tf2.time_idle 1
scoreboard players add @s tf2.ticks_since_hurt 1
clear @s arrow
data modify storage tf2:check_match UUID set from entity @s UUID
tag @s add tf2.self
execute if predicate tf2:empty_hand run function tf2:__private__/if_else/59
tag @s remove tf2.self
function tf2:weapons/slot_check
scoreboard players set __if_else__ tf2.var 0
execute if items entity @s weapon.mainhand crossbow[charged_projectiles=[],custom_data~{should_detect_click:true}] run function tf2:__private__/if_else/60
execute if score __if_else__ tf2.var matches 0 if data entity @s[scores={tf2.interpolate_rmb=1..}] SelectedItem.components.minecraft:custom_data.attributes.interpolate_rmb run function tf2:weapons/interpolate_rmb
execute if entity @s[tag=tf2.autoreload,scores={tf2.time_idle=30..,tf2.reload_delay=..0},predicate=!tf2:hide_ammo] run function tf2:weapons/attempt_autoreload
execute if items entity @s weapon.offhand *[custom_data~{controls:{alt_fire:true}}] run function tf2:weapons/alt_fire
execute if entity @s[scores={tf2.class=0},predicate=tf2:active_offhand] run scoreboard players operation @s tf2.class = @s tf2.last_class
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get @s tf2.class
function tf2:__private__/switch_case/18/select with storage tf2:__storage__
item replace entity @s[scores={tf2.class=1..9},tag=!tf2.in_disguise_menu] hotbar.8 with carrot_on_a_stick[custom_model_data=10,custom_name='"Change Class"']
execute store result score $_count_ tf2.var run clear @s carrot_on_a_stick[custom_model_data=10,custom_name='"Change Class"'] 0
execute unless score $_count_ tf2.var matches 1 if entity @s[tag=!tf2.in_disguise_menu] run clear @s carrot_on_a_stick[custom_model_data=10,custom_name='"Change Class"']
execute unless score $_count_ tf2.var matches 1 if entity @s[tag=!tf2.in_disguise_menu] run item replace entity @s[scores={tf2.class=1..9}] hotbar.8 with carrot_on_a_stick[custom_model_data=10,custom_name='"Change Class"']
clear @s[tag=tf2.in_disguise_menu] carrot_on_a_stick[custom_model_data=10,custom_name='"Change Class"']
execute if entity @s[tag=tf2.on_fire] run function tf2:class/pyro/afterburn
scoreboard players operation @s tf2.fall_y3 = @s tf2.fall_y2
scoreboard players operation @s tf2.fall_y2 = @s tf2.fall_y1
scoreboard players operation @s tf2.fall_y1 = @s tf2.fall_y
execute store result score @s tf2.fall_y run data get entity @s Pos[1] 100
execute if predicate tf2:grounded if score @s tf2.fall matches 1.. run function tf2:player/fall_damage
execute if score @s tf2.air matches -19 run function tf2:__private__/if_else/62
scoreboard players add @s[predicate=!tf2:submerged] tf2.time_surfaced 1
execute if score @s tf2.time_surfaced matches 40 run function tf2:__private__/if_else/63
scoreboard players set @s[predicate=tf2:submerged] tf2.time_surfaced 0
scoreboard players operation $id tf2.var = @s tf2.player.id
execute as @e[type=#tf2:player_like] if score @s tf2.heal_target = $id tf2.var run tag @s add tf2.search
execute if entity @s[tag=tf2.overheal] unless entity @a[tag=tf2.search] run function tf2:player/overheal_decay
execute unless entity @a[tag=tf2.search,tag=tf2.uber_source] run tag @s remove tf2.uber_patient
tag @e remove tf2.search
scoreboard players operation $tick_cycle tf2.var = $__global__ 0008it54g_p_join
scoreboard players operation $tick_cycle tf2.var %= 40 tf2.const
execute if score @s tf2.team = @e[type=item_display,tag=tf2.resupply,distance=..1.5,limit=1] tf2.team if score $tick_cycle tf2.var matches 0 run function tf2:__private__/if_else/64
tag @a remove tf2.current
execute if score @s tf2.coas matches 1.. run function tf2:player/coas_input