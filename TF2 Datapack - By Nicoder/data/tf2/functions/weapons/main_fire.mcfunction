function tf2:weapons/get_ammo
execute if score @s tf2.attack_delay matches 1.. run return 0
execute if score $_clip_ tf2.var matches ..0 unless predicate tf2:holding_melee run return 0
scoreboard players operation $current tf2.team = @s tf2.team
data modify storage retina:input {} merge from entity @s SelectedItem.tag.retina
execute store result score $_damage_ tf2.var run data get entity @s SelectedItem.tag.attributes.damage.base
execute store result score $_range_ tf2.var run data get entity @s SelectedItem.tag.attributes.range 1000
execute unless data entity @s SelectedItem.tag.attributes.range run scoreboard players set $_range_ tf2.var 2147483647
execute store result score $_maxRamp_ tf2.var run data get entity @s SelectedItem.tag.attributes.damage.maxRamp 100
execute unless data entity @s SelectedItem.tag.attributes.maxRamp run scoreboard players set $_maxRamp_ tf2.var 150
execute store result score $_noRamp_ tf2.var if predicate tf2:holding_melee
scoreboard players set $func_id retina.__variable__ 100
function retina:traverse/multicast
execute store result score $_delay_ tf2.var run data get entity @s SelectedItem.tag.attributes.attackDelay 20000
scoreboard players operation @s tf2.attack_delay += $_delay_ tf2.var
scoreboard players reset $func_id retina.__variable__
scoreboard players set __if_else__ tf2.var 0
execute if predicate tf2:holding_melee run function tf2:__private__/if_else/16
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/17