#> tf2:objectives/control_point/set_owner/red
# 
# @within tf2:objectives/control_point/main
# @context marker & position

scoreboard players set @s tf2.team 1
scoreboard players operation @s tf2.red_progress = @s tf2.capture_threshold

# test purposes only
setblock ~ ~-1 ~ red_stained_glass

# if KOTH: start counting down RED's timer (and pause BLU's)
# if 5CP & this is mid: unlock BLU's 1st
# else if 5CP: lock/unlock adjacent points in line
# if ATK/DEF: how??!!?!?