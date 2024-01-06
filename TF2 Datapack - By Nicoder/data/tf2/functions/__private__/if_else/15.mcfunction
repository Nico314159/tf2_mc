tellraw @a[tag=tf2.current] ["",{"selector":"@a[tag=retina.executing]","type":"selector"},{"text":" headshot "},{"selector":"@s","type":"selector"},{"text":" with "},{"type":"nbt","source":"entity","nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@a[tag=retina.executing]"}]
execute store result storage tf2.__temp__:index num int 1 run random value 1..5
execute as @a[tag=retina.executing,predicate=!tf2:holding_melee] at @s run function tf2:weapons/crit_sound with storage tf2.__temp__:index
execute store result storage tf2.__temp__:index num int 1 run random value 1..3
execute at @s run function tf2:weapons/crit_receive_sound with storage tf2.__temp__:index
scoreboard players set __if_else__ tf2.var 1