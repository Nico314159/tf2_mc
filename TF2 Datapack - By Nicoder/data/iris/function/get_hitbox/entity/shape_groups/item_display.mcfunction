execute if entity @s[tag=!tf2.projectile] run return run execute store result score $entity_height iris run scoreboard players set $entity_width iris 0
scoreboard players operation $entity_height iris = @s tf2.hitbox
scoreboard players operation $entity_height iris *= 1000 tf2.const
scoreboard players operation $entity_width iris = @s tf2.hitbox
scoreboard players operation $entity_width iris *= 1000 tf2.const