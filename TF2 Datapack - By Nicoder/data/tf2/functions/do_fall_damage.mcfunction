scoreboard players operation $2nd_previous_∆y tf2.var = @s tf2.fall_y3
scoreboard players operation $2nd_previous_∆y tf2.var -= @s tf2.fall_y2
scoreboard players operation $previous_∆y tf2.var = @s tf2.fall_y2
scoreboard players operation $previous_∆y tf2.var -= @s tf2.fall_y1
scoreboard players operation $current_∆y tf2.var = @s tf2.fall_y1
scoreboard players operation $current_∆y tf2.var -= @s tf2.fall_y
scoreboard players set __if_else__ tf2.var 0
execute if score $previous_∆y tf2.var >= $current_∆y tf2.var run function tf2:__private__/if_else/48
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/49
scoreboard players operation $impact_velocity tf2.var *= 1050 tf2.const
execute if score $impact_velocity tf2.var matches ..92000 run scoreboard players set $impact_velocity tf2.var 0
scoreboard players operation $fall_damage tf2.var = $impact_velocity tf2.var
scoreboard players operation $fall_damage tf2.var /= 85 tf2.const
scoreboard players operation $fall_damage tf2.var < 5833 tf2.const
scoreboard players operation $fall_damage tf2.var *= @s tf2.max_health
scoreboard players operation $fall_damage tf2.var /= 100 tf2.const
execute store result score $random_mult tf2.var run random value 80..120
scoreboard players operation $fall_damage tf2.var *= $random_mult tf2.var
scoreboard players operation $fall_damage tf2.var /= 10000 tf2.const
scoreboard players operation @s tf2.health -= $fall_damage tf2.var
execute store result score $previous_∆y tf2.var store result score $current_∆y tf2.var store result score $impact_velocity tf2.var store result score $fall_damage tf2.var store result score @s tf2.fall_y3 store result score @s tf2.fall_y2 store result score @s tf2.fall_y1 store result score @s tf2.fall_y run scoreboard players set @s tf2.fall 0