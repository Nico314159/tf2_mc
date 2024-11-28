scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
tag @e remove tf2.search
execute as @e[type=#tf2:player_like] if score @s tf2.batch_number = $local tf2.batch_number unless entity @s[gamemode=spectator] run tag @s add tf2.batch
tag @e[tag=tf2.batch] add tf2.search
scoreboard players operation $temp tf2.team = @s tf2.team
execute as @e[type=#tf2:player_like,tag=tf2.search] unless score @s tf2.team = $temp tf2.team run tag @s add tf2.opponent
execute if score @s tf2.age matches ..4 run tag @e[type=#tf2:player_like,tag=tf2.search,tag=!tf2.opponent] remove tf2.search
tag @e remove tf2.hit_by_projectile
$execute positioned ~-$(offset) ~-$(offset) ~-$(offset) as @n[tag=#tf2:player_like,tag=tf2.search,dx=$(volume),dy=$(volume),dz=$(volume)] run tag @s add tf2.hit_by_projectile
execute store success score $hit_entity tf2.var if entity @e[tag=tf2.hit_by_projectile]