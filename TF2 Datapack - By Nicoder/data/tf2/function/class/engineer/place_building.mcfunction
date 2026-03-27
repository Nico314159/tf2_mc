tag @s remove tf2.in_construction_menu
tag @s add tf2.need_to_switch_away
scoreboard players set $err tf2.var 0
execute unless score @s tf2.class matches 8 store result score $err tf2.var run tellraw @s {"text":"ERROR: You can't use buildings if you're not playing as the Engineer.","color":"yellow","italic":true,"type":"text"}
execute if score $err tf2.var matches 1.. run return fail
return 100