particle minecraft:lava ~-0.05 ~0.7 ~-0.05 0.075 0.1 0.075 0 3 force @a[tag=!self]
data modify storage tf2:lookup damages append value {cause:-2147483648,amount:4}
execute store result storage tf2:lookup damages[-1].target int 1 run scoreboard players get @s tf2.player.id
data modify storage tf2:lookup damages[-1].kill_verb set value 'burned to death'