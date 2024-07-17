execute if score @s tf2.attack_delay matches 1.. run return 0
execute if score @s tf2.class matches 6 if score @s tf2.current_slot matches 0 if score @s tf2.time_revved < @s tf2.rev_threshold run return 0
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get @s tf2.class
function tf2:__private__/switch_case/2/select with storage tf2:__storage__
execute unless predicate tf2:has_main_fire run return 0
function tf2:weapons/get_ammo
execute if score $_clip_ tf2.var matches ..0 unless predicate tf2:holding_melee run return 0
execute if entity @s[tag=tf2.disguised] run function tf2:class/spy/title_image
tag @s remove tf2.disguised
execute unless predicate tf2:holding_melee run playsound tf2:item.gun.shoot player @s ~ ~ ~ 1.35 1 0.1
scoreboard players operation $current tf2.team = @s tf2.team
data modify storage tf2:lookup item set from entity @s SelectedItem
data modify storage retina:input {} merge from storage tf2:lookup item.components.minecraft:custom_data.retina
execute if data storage tf2:lookup item.components.minecraft:custom_data.attributes.spreadRecovery store result score $_sr_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.spreadRecovery
execute if data storage tf2:lookup item.components.minecraft:custom_data.attributes.spreadRecovery if score @s tf2.time_idle > $_sr_ tf2.var run data modify storage retina:input SpreadFactor set value [0,0]
execute store result score $_damage_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.base
execute store result score $_range_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.range 1000
execute store result score $_maxRamp_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.maxRamp 100
execute unless data storage tf2:lookup item.components.minecraft:custom_data.attributes.range run scoreboard players set $_range_ tf2.var 2147483647
execute unless data storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.maxRamp run scoreboard players set $_maxRamp_ tf2.var 150
execute store result score $_rangeDependent_ tf2.var unless predicate tf2:uniform_damage
scoreboard players set $func_id retina.__variable__ 100
scoreboard players set $_totalDamage_ tf2.var 0
execute if predicate tf2:holding_projectile run function tf2:weapons/projectile
execute unless predicate tf2:holding_projectile run function tf2:weapons/hitscan
execute store result score $_delay_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.attackDelay 20000
scoreboard players operation @s tf2.attack_delay += $_delay_ tf2.var
scoreboard players reset $func_id retina.__variable__
data modify storage tf2:summon number.X set from storage retina:output ContactCoordinates[0]
data modify storage tf2:summon number.Y set from storage retina:output ContactCoordinates[1]
data modify storage tf2:summon number.Z set from storage retina:output ContactCoordinates[2]
execute store result storage tf2:summon number.value int 1 run scoreboard players get $_totalDamage_ tf2.var
execute if score $_totalDamage_ tf2.var matches 1.. run function tf2:hud/damage_numbers with storage tf2:summon number
execute if predicate tf2:holding_melee run return run function tf2:__private__/anonymous/5
scoreboard players remove $_clip_ tf2.var 1
function tf2:weapons/set_ammo
scoreboard players set @s tf2.consecutive_reload 0
execute unless score $the_interpolation tf2.var matches 1.. if data entity @s[scores={tf2.time_idle=..10}] SelectedItem.components.minecraft:custom_data.attributes.interpolate_rmb store result score @s tf2.interpolate_rmb run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.interpolate_rmb
scoreboard players set @s tf2.time_idle 0