tellraw @a "hi"
execute if entity @s[tag=tf2.base] on passengers run return run function tf2:weapons/damage_building
execute if score @s tf2.team = $current tf2.team run return 0
data remove storage tf2:vars kill_verb
scoreboard players operation $cause tf2.var = @a[tag=iris.executing,limit=1] tf2.player.id
scoreboard players operation $target tf2.var = @s tf2.player.id
execute if function tf2:damage/try_merge_into_last run return 1
data modify storage tf2:lookup damages append value {}
execute store result storage tf2:lookup damages[-1].cause int 1 run scoreboard players get $cause tf2.var
execute store result storage tf2:lookup damages[-1].target int 1 run scoreboard players get $target tf2.var
execute store result storage tf2:lookup damages[-1].amount int 1 run scoreboard players get $_damage_ tf2.var
data modify storage tf2:lookup damages[-1].kill_verb set from storage tf2:vars kill_verb
data modify storage tf2:lookup damages[-1].weapon set from entity @a[tag=iris.executing,limit=1] SelectedItem.components.minecraft:custom_name
return 1