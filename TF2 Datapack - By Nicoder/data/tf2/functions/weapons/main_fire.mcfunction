execute if score @s tf2.attack_delay matches 1.. run return 0
scoreboard players operation $current tf2.team = @s tf2.team
data modify storage retina:input {} merge from entity @s SelectedItem.tag.retina
execute store result score $_damage_ tf2.var run data get entity @s SelectedItem.tag.attributes.damage.base
execute store result score $_range_ tf2.var run data get entity @s SelectedItem.tag.attributes.range 1000
execute unless data entity @s SelectedItem.tag.attributes.range run scoreboard players set $_range_ tf2.var 2147483647
scoreboard players set $end_particle retina._variable_ 1
function retina:traverse/multicast
execute as @e[type=#tf2:player_like,scores={retina.hit=1..}] run function tf2:__private__/anonymous/3
scoreboard players set $end_particle retina._variable_ 0
execute store result score $_delay_ tf2.var run data get entity @s SelectedItem.tag.attributes.attackDelay 20000
scoreboard players operation @s tf2.attack_delay += $_delay_ tf2.var