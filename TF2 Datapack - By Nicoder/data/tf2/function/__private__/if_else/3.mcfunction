item replace entity @s inventory.1 with arrow
execute store result score $_count_ tf2.var run clear @s arrow 0
execute unless score $_count_ tf2.var matches 1 run clear @s arrow
execute unless score $_count_ tf2.var matches 1 run item replace entity @s inventory.1 with arrow