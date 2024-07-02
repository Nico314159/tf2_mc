$execute store result storage tf2:summon projectile.speed double 0.01905 run random value $(min)..$(max)
tellraw @a {"nbt":"projectile.speed","storage":"tf2:summon"}