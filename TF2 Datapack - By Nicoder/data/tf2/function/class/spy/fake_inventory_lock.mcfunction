execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get @s tf2.disguise.class
function tf2:__private__/switch_case/0/select with storage tf2:__storage__
execute if score @s tf2.disguise.team matches 1 run data modify storage tf2:vars material set value 'red'
execute if score @s tf2.disguise.team matches 2 run data modify storage tf2:vars material set value 'blu'
execute if items entity @s player.cursor * run item replace entity @s player.cursor with air
function tf2:class/spy/inventory_lock
function tf2:class/spy/fake_primary
function tf2:class/spy/fake_secondary
function tf2:class/spy/fake_melee
function tf2:class/spy/fake_leggings with storage tf2:vars
execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run function tf2:class/spy/fake_leggings with storage tf2:vars
item modify entity @s weapon.offhand {"function":"minecraft:set_custom_model_data","value":1351}
scoreboard players operation @s tf2.model_number = @s tf2.disguise.class
scoreboard players operation @s tf2.model_number *= 10 tf2.const
scoreboard players operation @s tf2.model_number += @s tf2.disguise.team
loot replace entity @s armor.head loot tf2:head
execute store result score $_count_ tf2.var run clear @s paper 0
execute unless score $_count_ tf2.var matches 1 run clear @s paper
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.head loot tf2:head
function tf2:class/spy/true_team_trail