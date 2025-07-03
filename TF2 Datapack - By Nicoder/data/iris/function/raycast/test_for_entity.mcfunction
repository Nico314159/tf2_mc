execute unless data storage iris:settings {TargetEntities:true} run return fail
execute align xyz unless entity @e[type=!#iris:ignore,tag=!iris.ignore,dx=0,dy=0,dz=0,tag=!iris.executing] unless entity @e[type=item_display,tag=!iris.ignore,dx=0,dy=0,dz=0,tag=tf2.projectile,tag=!iris.executing] run return fail
execute align xyz as @e[type=!#iris:ignore,tag=!iris.ignore,dx=0,dy=0,dz=0,tag=!iris.executing] run function iris:get_hitbox/entity
execute align xyz as @e[type=item_display,tag=!iris.ignore,dx=0,dy=0,dz=0,tag=tf2.projectile,tag=!iris.executing] run function iris:get_hitbox/item_display
return run function iris:raycast/check_intersection/loop