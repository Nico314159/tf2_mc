data modify storage tf2:vars kill_verb set value 'headshot'
execute store result storage tf2:index num int 1 run random value 1..5
execute as @a[tag=retina.executing,predicate=!tf2:holding_melee] at @s run function tf2:weapons/crit_sound with storage tf2:index
execute store result storage tf2:index num int 1 run random value 1..3
execute at @s run function tf2:weapons/crit_receive_sound with storage tf2:index
scoreboard players set __if_else__ tf2.var 1