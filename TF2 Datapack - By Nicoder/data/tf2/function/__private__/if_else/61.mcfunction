scoreboard players operation $[x] iris = $mot.voxel_x tf2.var
scoreboard players operation $[x] iris /= 1000 tf2.const
scoreboard players operation $[y] iris = $mot.voxel_y tf2.var
scoreboard players operation $[y] iris /= 1000 tf2.const
scoreboard players operation $[z] iris = $mot.voxel_z tf2.var
scoreboard players operation $[z] iris /= 1000 tf2.const
scoreboard players set $temp tf2.team -1
execute if score @s tf2.age matches ..4 run scoreboard players operation $temp tf2.team = @s tf2.team
execute align xyz as @e[type=#tf2:player_like,dx=0,dy=0,dz=0,tag=!tf2.executing_entity] unless score @s tf2.team = $temp tf2.team at @s run function iris:get_hitbox/entity
scoreboard players operation $current tf2.team = @s tf2.team
execute if entity @s[tag=tf2.can_destroy_stickybombs] align xyz positioned ~-0.001 ~-0.001 ~-0.001 as @e[type=item_display,dx=0.002,dy=0.002,dz=0.002,tag=tf2.projectile,tag=tf2.stuck,tag=!tf2.executing_entity] unless score @s tf2.team = $current tf2.team at @s run function iris:get_hitbox/item_display
execute align xyz positioned ~-0.001 ~-0.001 ~-0.001 as @e[type=item_display,dx=0.002,dy=0.002,dz=0.002,predicate=tf2:is_a_building] unless score @s tf2.team = $temp tf2.team at @s run function iris:get_hitbox/item_display