execute if score @s tf2.ubercharge matches ..799 run return fail
tag @s add self
execute as @e[type=#tf2:player_like,tag=!self] if score @s tf2.player.id = @p[tag=self] tf2.heal_target at @s run tag @s add tf2.uber
tag @s add tf2.uber
tag @s remove self