function retina:traverse/setup
execute unless data storage retina:output {Target: "ENTITY"} run return fail
execute if entity @a[tag=retina.target,gamemode=spectator] run return fail
scoreboard players operation $current tf2.team = @s tf2.team
execute as @a[tag=retina.target,limit=1] if score @s tf2.team = $current tf2.team run return fail
execute store result score $enemy_dist tf2.var run data get storage retina:output Distance 10
execute store result score $backstab_range tf2.var run data get entity @s SelectedItem.components.minecraft:custom_data.attributes.range 10
execute if score $enemy_dist tf2.var > $backstab_range tf2.var run return fail
execute store result score $theta_1 tf2.var run data get entity @s Rotation[0]
execute store result score $theta_2 tf2.var run data get entity @a[tag=retina.target,limit=1] Rotation[0]
scoreboard players operation $theta_1 tf2.var -= $theta_2 tf2.var
execute unless score $theta_1 tf2.var matches -90..90 run return fail
execute store result score $CMD tf2.var run data get entity @s SelectedItem.components.minecraft:custom_model_data 0.1
scoreboard players operation $CMD tf2.var *= 10 tf2.const
scoreboard players add $CMD tf2.var 1
item modify entity @s weapon.mainhand tf2:class/spy/raise_knife