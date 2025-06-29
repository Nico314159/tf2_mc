scoreboard players operation $entity_height iris = @s tf2.hitbox
scoreboard players operation $entity_height iris *= 1000 tf2.const
scoreboard players operation $entity_width iris = @s tf2.hitbox
scoreboard players operation $entity_width iris *= 1000 tf2.const
scoreboard players set $entity_found iris 1
function iris:get_hitbox/entity