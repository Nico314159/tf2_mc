execute store result score $theta_1 tf2.var run data get entity @s Rotation[0]
execute store result score $theta_2 tf2.var run data get entity @a[tag=retina.executing,limit=1] Rotation[0]
scoreboard players operation $theta_1 tf2.var -= $theta_2 tf2.var
execute unless score $theta_1 tf2.var matches -90..90 run return fail
scoreboard players operation $_finalDamage_ tf2.var = @s tf2.max_health
data modify storage tf2:vars kill_verb set value 'backstabbed'