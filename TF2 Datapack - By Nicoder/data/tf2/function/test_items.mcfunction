item replace entity @s hotbar.0 with air
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s hotbar.8 with air
item replace entity @s weapon.offhand with air
give @s carrot_on_a_stick[item_model="tf2:misc/choose_class",custom_model_data={strings:["sniper"]},custom_name='"Sniper"'] 1
give @s carrot_on_a_stick[item_model="tf2:misc/choose_class",custom_model_data={strings:["scout"]},custom_name='"Scout"'] 1
give @s carrot_on_a_stick[item_model="tf2:misc/choose_class",custom_model_data={strings:["heavy"]},custom_name='"Heavy"'] 1
give @s carrot_on_a_stick[item_model="tf2:misc/choose_class",custom_model_data={strings:["soldier"]},custom_name='"Soldier"'] 1
give @s carrot_on_a_stick[item_model="tf2:misc/choose_class",custom_model_data={strings:["pyro"]},custom_name='"Pyro"'] 1
give @s carrot_on_a_stick[item_model="tf2:misc/choose_class",custom_model_data={strings:["spy"]},custom_name='"Spy (WIP)"'] 1
give @s carrot_on_a_stick[item_model="tf2:misc/choose_class",custom_model_data={strings:["medic"]},custom_name='"Medic"'] 1
give @s carrot_on_a_stick[item_model="tf2:misc/choose_class",custom_model_data={strings:["demoman"]},custom_name='"Demoman (WIP)"'] 1
attribute @s minecraft:movement_speed modifier add tf2:no_move -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add tf2:no_jump -1 add_multiplied_total
attribute @s minecraft:movement_speed modifier remove tf2:match_disguise_speed
scoreboard players reset @s tf2.class