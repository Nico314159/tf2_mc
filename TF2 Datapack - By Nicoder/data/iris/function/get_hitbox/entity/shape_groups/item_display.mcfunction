execute if entity @s[tag=!tf2.projectile] run return fail
scoreboard players operation $entity_height iris = @s tf2.hitbox
scoreboard players operation $entity_height iris *= 1000 tf2.const
scoreboard players operation $entity_width iris = @s tf2.hitbox
scoreboard players operation $entity_width iris *= 1000 tf2.const