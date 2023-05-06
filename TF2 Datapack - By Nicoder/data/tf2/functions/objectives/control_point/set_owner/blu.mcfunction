#> tf2:objectives/control_point/set_owner/blu
# 
# @within tf2:objectives/control_point/capture_progress/blu
# @context CP entity & position
# @writes
#   score $last tf2.team
#       The team that *previously* controlled this point. (0 = unowned, 1 = RED, 2 = BLU)
#   storage tf2.__temp__:lookup points[0].(owner/progress)
#       Visual data relating to this point's state.
# @reads
#   score @s tf2.batch_number
#   score ⟨marker⟩ tf2.batch_number
#       Finds the game marker that this control point belongs to.
#   score ⟨marker⟩ tf2.gamemode
#       The gamemode that this control point is part of (1 = A/D, 2 = 5CP, 3 = KOTH). Used to determine `on_capture` events.
scoreboard players operation $last tf2.team = @s tf2.team
scoreboard players set @s tf2.team 2
scoreboard players operation @s tf2.blu_progress = @s tf2.capture_threshold
function tf2:objectives/control_point/find_index/main
data modify storage tf2.__temp__:lookup points[0].owner set value "[{\"text\":\"[\",\"color\":\"#F5EACB\"},{\"text\":\"3210=\",\"color\":\"#517AB8\"}]"
data modify storage tf2.__temp__:lookup points[0].progress set value "[{\"text\":\"321))))))))))))))\",\"color\":\"gray\"}]"
function tf2:objectives/control_point/find_index/reinsert
tag @s remove tf2.said_dialogue
# placeholder for proper model
setblock ~ ~-1 ~ blue_stained_glass
# if KOTH: start counting down BLU's timer & pause RED's
# if 5CP & this is mid: unlock RED's 1st (✓)
# else if 5CP: lock/unlock adjacent points in line (✓)
# if ATK/DEF: lock this point (✓) & unlock next point (✓)
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
# TODO: change this part to use the new 'return' command when 1.20 releases
execute unless score $last tf2.team = @s tf2.team if score @s tf2.gamemode matches 1 at @s run function tf2:objectives/control_point/on_capture/blu/atk_def
execute unless score $last tf2.team = @s tf2.team if score @s[tag=!tf2.multistage] tf2.gamemode matches 2 run function tf2:objectives/control_point/on_capture/blu/symmetric
execute unless score $last tf2.team = @s tf2.team if score @s tf2.increment = @s tf2.increment run function tf2:objectives/control_point/on_capture/add_time
tag @e[type=marker,tag=tf2.current] remove tf2.current