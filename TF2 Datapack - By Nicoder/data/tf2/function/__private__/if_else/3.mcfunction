loot replace entity @s weapon.offhand loot tf2:class/heavy/left_fist
execute store result score $_count_ tf2.var run clear @s clay_ball 0
execute unless score $_count_ tf2.var matches 1 run clear @s clay_ball
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s weapon.offhand loot tf2:class/heavy/left_fist
scoreboard players set __if_else__ tf2.var 1