data modify storage tf2:vars kill_verb set value 'killed'
execute as @a[tag=retina.executing,predicate=!tf2:holding_melee] at @s run playsound tf2:ding.kill player @s ~ ~ ~ 0.9 1 0.05