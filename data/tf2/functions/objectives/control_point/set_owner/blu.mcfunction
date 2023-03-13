#> tf2:objectives/control_point/set_owner/blu
# 
# @within tf2:objectives/control_point/main
# @context marker & position

scoreboard players set @s tf2.team 2
scoreboard players operation @s tf2.blu_progress = @s tf2.capture_threshold

# test purposes only
setblock ~ ~-1 ~ blue_stained_glass

# if KOTH: start counting down BLU's timer (and pause RED's)
# if 5CP & this is mid: unlock RED's 1st
# else if 5CP: lock/unlock adjacent points in line
# if ATK/DEF: lock this point & unlock the next