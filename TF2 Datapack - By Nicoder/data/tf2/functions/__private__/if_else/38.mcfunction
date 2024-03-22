scoreboard players operation $impact_velocity tf2.var = $previous_dy tf2.var
scoreboard players operation $impact_velocity tf2.var += $previous_dy tf2.var
scoreboard players operation $impact_velocity tf2.var -= $2nd_previous_dy tf2.var
scoreboard players set __if_else__ tf2.var 1