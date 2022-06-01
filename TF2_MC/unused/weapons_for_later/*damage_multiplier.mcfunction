execute as @a if entity @s[scores={damageMultiplier=1..}] as @s run scoreboard players operation @s custom_damage = @s m_damage_taken
execute as @a if entity @s[scores={damageMultiplier=1..}] run scoreboard players operation @s custom_damage *= @s damageMultiplier
execute as @a if entity @s[scores={damageMultiplier=1..}] run scoreboard players operation @s custom_damage /= NicoWill314 oneThousand
execute as @a run function custom_damage:apply
execute as @a run scoreboard players set @s m_damage_taken 0