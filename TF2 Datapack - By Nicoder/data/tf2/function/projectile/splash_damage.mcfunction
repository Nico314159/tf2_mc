execute store result score $_finalDamage_ tf2.var run function tf2:projectile/calculate_splash
execute if score $_finalDamage_ tf2.var matches 1.. run scoreboard players add $playersHurt tf2.var 1
data modify storage tf2:lookup damages append value {}
execute store result storage tf2:lookup damages[-1].cause int 1 run scoreboard players get @a[tag=tf2.origin,limit=1] tf2.player.id
execute store result storage tf2:lookup damages[-1].target int 1 run scoreboard players get @s tf2.player.id
execute store result storage tf2:lookup damages[-1].amount int 1 run scoreboard players get $_finalDamage_ tf2.var
data modify storage tf2:lookup damages[-1].kill_verb set value 'blew up'
function tf2:projectile/knockback