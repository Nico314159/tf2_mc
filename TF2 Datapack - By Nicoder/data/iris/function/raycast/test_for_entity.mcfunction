execute unless data storage iris:settings {TargetEntities:true} run return fail
execute align xyz positioned ~-0.001 ~-0.001 ~-0.001 unless entity @e[type=!#iris:ignore,tag=!iris.ignore,dx=0.002,dy=0.002,dz=0.002,tag=!iris.executing] unless entity @e[type=item_display,tag=tf2.can_be_shot,dx=0.002,dy=0.002,dz=0.002,tag=!iris.executing] run return fail
execute align xyz as @e[type=!#iris:ignore,tag=!iris.ignore,dx=0,dy=0,dz=0,tag=!iris.executing] run function iris:get_hitbox/entity
execute align xyz positioned ~-0.001 ~-0.001 ~-0.001 as @e[type=item_display,tag=tf2.can_be_shot,dx=0.002,dy=0.002,dz=0.002,tag=!iris.executing] run function iris:get_hitbox/item_display
return run function iris:raycast/check_intersection/loop