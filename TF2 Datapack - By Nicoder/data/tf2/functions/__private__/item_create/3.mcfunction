scoreboard players set @s tf2.class 6
function tf2:class_select
execute unless score @s[tag=!tf2.in_spawn] tf2.last_class matches 6 run scoreboard players set @s tf2.health 0