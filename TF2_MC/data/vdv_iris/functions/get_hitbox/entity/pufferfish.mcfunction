#> vdv_iris:get_hitbox/entity/pufferfish
#
# @within vdv_iris:get_hitbox/entity

execute store result score $pufferfish_puffstate vdv_iris run data get entity @s PuffState
execute if score $pufferfish_puffstate vdv_iris matches 0 run scoreboard players set $entity_half_width vdv_iris 175000
execute if score $pufferfish_puffstate vdv_iris matches 0 run scoreboard players set $entity_height vdv_iris 350000
execute if score $pufferfish_puffstate vdv_iris matches 1 run scoreboard players set $entity_half_width vdv_iris 250000
execute if score $pufferfish_puffstate vdv_iris matches 1 run scoreboard players set $entity_height vdv_iris 500000
execute if score $pufferfish_puffstate vdv_iris matches 2 run scoreboard players set $entity_half_width vdv_iris 350000
execute if score $pufferfish_puffstate vdv_iris matches 2 run scoreboard players set $entity_height vdv_iris 700000