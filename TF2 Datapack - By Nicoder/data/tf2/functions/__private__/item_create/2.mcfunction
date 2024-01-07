scoreboard players set @s tf2.class 3
function tf2:class_select
execute unless score @s[tag=!tf2.in_spawn] tf2.last_class matches 3 run scoreboard players set @s tf2.health 0