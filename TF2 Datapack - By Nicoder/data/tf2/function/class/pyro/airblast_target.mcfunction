tag @s add tf2.self
tag @p[tag=origin] add iris.ignore
execute summon marker run function tf2:raycast/to_self
execute positioned as @s as @p[tag=origin] run function tf2:raycast/informational
tag @p[tag=origin] remove iris.ignore
tag @s remove tf2.self
execute if entity @s[tag=!iris.targeted_entity] run return fail
execute if entity @s[type=#tf2:player_like,tag=tf2.on_fire] if score @s tf2.team = $current tf2.team run function tf2:class/pyro/extinguish_teammate
execute if entity @s[type=#tf2:player_like] unless score @s tf2.team = $current tf2.team run function tf2:class/pyro/knockback_enemy
execute if entity @s[type=item_display,tag=tf2.projectile,tag=!tf2.unreflectable] unless score @s tf2.team = $current tf2.team run function tf2:class/pyro/reflect_projectile