kill @e[type=arrow,tag=!tf2.projectile]
execute if predicate tf2:ammo_in_clip run function tf2:weapons/main_fire
scoreboard players set __if_else__ tf2.var 1