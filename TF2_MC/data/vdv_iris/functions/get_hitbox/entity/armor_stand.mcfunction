#> vdv_iris:get_hitbox/entity/armor_stand
#
# @within vdv_iris:get_hitbox/entity

data modify storage vdv_iris:data EntityTag set from entity @s
execute if data storage vdv_iris:data EntityTag{Small: 1b} run scoreboard players set $entity_half_width vdv_iris 125000
execute if data storage vdv_iris:data EntityTag{Small: 1b} run scoreboard players set $entity_height vdv_iris 987500
execute unless data storage vdv_iris:data EntityTag{Small: 1b} run scoreboard players set $entity_half_width vdv_iris 250000
execute unless data storage vdv_iris:data EntityTag{Small: 1b} run scoreboard players set $entity_height vdv_iris 1975000
execute if data storage vdv_iris:data EntityTag{Marker: 1b} store result score $entity_half_width vdv_iris run scoreboard players set $entity_height vdv_iris 0