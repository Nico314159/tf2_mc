execute store result score $vel_x tf2.var run data get storage tf2:summon projectile.X 100
scoreboard players operation $vel_x tf2.var += @s tf2.now_x
scoreboard players operation $vel_x tf2.var -= @s tf2.last_x
execute store result storage tf2:summon projectile.X double 0.01 run scoreboard players get $vel_x tf2.var
execute store result score $vel_y tf2.var run data get storage tf2:summon projectile.Y 100
scoreboard players operation $vel_y tf2.var += @s tf2.fall_y1
scoreboard players operation $vel_y tf2.var -= @s tf2.fall_y2
execute store result storage tf2:summon projectile.Y double 0.01 run scoreboard players get $vel_y tf2.var
execute store result score $vel_z tf2.var run data get storage tf2:summon projectile.Z 100
scoreboard players operation $vel_z tf2.var += @s tf2.now_z
scoreboard players operation $vel_z tf2.var -= @s tf2.last_z
execute store result storage tf2:summon projectile.Z double 0.01 run scoreboard players get $vel_z tf2.var