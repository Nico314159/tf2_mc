#> vdv_iris:get_hitbox/entity/slime_like
#
# @within vdv_iris:get_hitbox/entity

scoreboard players set $entity_half_width vdv_iris 255000
scoreboard players set $entity_height vdv_iris 510000
execute store result score $slime_size vdv_iris run data get entity @s Size
scoreboard players add $slime_size vdv_iris 1
scoreboard players operation $entity_half_width vdv_iris *= $slime_size vdv_iris
scoreboard players operation $entity_height vdv_iris *= $slime_size vdv_iris