scoreboard players set @s tf2.class 2
function tf2:class_select
execute unless score @s[tag=!tf2.in_spawn] tf2.last_class matches 2 run scoreboard players set @s tf2.health 0