function tf2:class/spy/title_image
tag @s remove tf2.disguised
scoreboard players reset @s tf2.disguise.team
loot replace entity @s armor.legs loot tf2:class/spy/leg_model
loot replace entity @s armor.chest loot tf2:class/spy/chest_model
loot replace entity @s armor.head loot tf2:class/spy/head