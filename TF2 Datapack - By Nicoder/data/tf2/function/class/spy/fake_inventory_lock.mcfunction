data modify storage tf2:lookup equipment set from entity @s equipment
data modify storage tf2:disguise class set from storage tf2:lookup equipment.head.components.minecraft:custom_model_data.strings[0]
data modify storage tf2:disguise team set from storage tf2:lookup equipment.head.components.minecraft:custom_model_data.strings[1]
function tf2:__private__/anonymous/1 with storage tf2:disguise
function tf2:class/spy/true_team_trail