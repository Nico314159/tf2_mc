scoreboard players operation $class tf2.var = @s tf2.class
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get $class tf2.var
function tf2:__private__/switch_case/1/select with storage tf2:__storage__
execute unless predicate tf2:has_main_fire run return 0
execute if score @s tf2.attack_delay matches 1.. run return 0
function tf2:weapons/get_ammo
execute if score $_clip_ tf2.var matches ..0 unless predicate tf2:holding_melee run return 0
execute unless predicate tf2:holding_melee run playsound tf2:item.gun.shoot ambient @s ~ ~ ~ 1.5 1 0.1
scoreboard players operation $current tf2.team = @s tf2.team
data modify storage retina:input {} merge from entity @s SelectedItem.tag.retina
execute store result score $_damage_ tf2.var run data get entity @s SelectedItem.tag.attributes.damage.base
execute store result score $_range_ tf2.var run data get entity @s SelectedItem.tag.attributes.range 1000
execute unless data entity @s SelectedItem.tag.attributes.range run scoreboard players set $_range_ tf2.var 2147483647
execute store result score $_maxRamp_ tf2.var run data get entity @s SelectedItem.tag.attributes.damage.maxRamp 100
execute unless data entity @s SelectedItem.tag.attributes.damage.maxRamp run scoreboard players set $_maxRamp_ tf2.var 150
execute store result score $_rangeDependent_ tf2.var unless predicate tf2:uniform_damage
scoreboard players set $func_id retina.__variable__ 100
scoreboard players set $_totalDamage_ tf2.var 0
function retina:traverse/multicast
execute store result score $_delay_ tf2.var run data get entity @s SelectedItem.tag.attributes.attackDelay 20000
scoreboard players operation @s tf2.attack_delay += $_delay_ tf2.var
scoreboard players reset $func_id retina.__variable__
data modify storage tf2.__temp__:summon number.X set from storage retina:output ContactCoordinates[0]
data modify storage tf2.__temp__:summon number.Y set from storage retina:output ContactCoordinates[1]
data modify storage tf2.__temp__:summon number.Z set from storage retina:output ContactCoordinates[2]
execute store result storage tf2.__temp__:summon number.value int 1 run scoreboard players get $_totalDamage_ tf2.var
execute if score $_totalDamage_ tf2.var matches 1.. run function tf2:weapons/damage_numbers with storage tf2.__temp__:summon number
scoreboard players set $validOffset tf2.var 0
execute if score $offset_Y retina.__variable__ matches 192..778 unless score $offset_Y retina.__variable__ matches 193..607 unless score $offset_Y retina.__variable__ matches 611..775 run scoreboard players set $validOffset tf2.var 1
scoreboard players set __if_else__ tf2.var 0
execute if predicate tf2:holding_melee if score $validOffset tf2.var matches 1.. run function tf2:__private__/if_else/11
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/12