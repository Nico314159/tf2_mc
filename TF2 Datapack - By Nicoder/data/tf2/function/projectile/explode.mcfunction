particle minecraft:explosion ~ ~ ~
execute store result score $playersHurt tf2.var run scoreboard players set $_totalDamage_ tf2.var 0
scoreboard players operation $temp tf2.player.id = @s tf2.player.id
execute as @a if score @s tf2.player.id = $temp tf2.player.id run tag @s add tf2.origin
execute as @a if score @s tf2.player.id = $temp tf2.player.id run tag @s add tf2.opponent
tag @s add tf2.damage_source
tag @s add iris.ignore
$execute at @s as @e[type=#tf2:player_like,tag=tf2.opponent,distance=..$(radius)] run function tf2:projectile/wall_check
$execute at @s as @e[type=minecraft:item_display,tag=tf2.projectile,tag=tf2.stuck,distance=..$(radius)] if data entity @s item.components.minecraft:custom_data.projectile.explode_alt_fire run function tf2:class/demoman/unstick_stickybomb
tag @s remove iris.ignore
tag @s remove tf2.damage_source
tag @a remove tf2.origin