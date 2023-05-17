#> tf2:objectives/control_point/visuals/capture_progress/red/main
#
# @within tf2:objectives/control_point/main
# @writes 
#   score $local tf2.batch_number
#       The game marker that the control point belongs to. Used solely for `tf2:objectives/control_point/find_index/main`.
#   score $frame tf2.var
#       Frame of the bossbar animation to display. Ranges from 0 - 15 based on how much capture progress has been made.
#   score $wheel_frame tf2.var
#       Frame of the title animation to display. Value is calculated in `tf2:objectives/control_point/visuals/capture_progress/blu/wheel`.
# @reads
#   score @s tf2.capture_threshold
#   score @s tf2.(red/blu)_progress
#       Variable relating to the point's current state. Used solely to calculate `$frame tf2.var`.
#   score @s tf2.team
#       Which team owns the control point. Determines whether or not to flicker the background (only flickers if RED is taking BLU's point rather than an unowned point).
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
function tf2:objectives/control_point/find_index/main
scoreboard players set $frame tf2.var 0
scoreboard players operation $frame tf2.var = @s[scores={tf2.team=2}] tf2.capture_threshold
scoreboard players operation $frame tf2.var += @s tf2.red_progress
scoreboard players operation $frame tf2.var -= @s tf2.blu_progress
scoreboard players operation $frame tf2.var *= 8 tf2.const
execute if score @s tf2.team matches 0 run scoreboard players operation $frame tf2.var *= 2 tf2.const
scoreboard players operation $wheel_frame tf2.var = $frame tf2.var
scoreboard players operation $frame tf2.var /= @s tf2.capture_threshold
function tf2:__private__/switch_case/25
execute if score @s[scores={tf2.red_progress=0}] tf2.team matches 0 run data modify storage tf2.__temp__:lookup points[0].owner set value "[{\"text\":\"[\",\"color\":\"#F5EACB\"},{\"text\":\"3210=\",\"color\":\"#A1A1A1\"}]"
execute if score @s[scores={tf2.red_progress=0}] tf2.team matches 0 run data modify storage tf2.__temp__:lookup points[0].progress set value "[{\"text\":\"321))))))))))))))\",\"color\":\"gray\"}]"
execute if score @s[scores={tf2.red_progress=1..}] tf2.team matches 0 run function tf2:objectives/control_point/visuals/capture_progress/neutral_flicker
execute if score @s tf2.team matches 2 run function tf2:objectives/control_point/visuals/capture_progress/blu/flicker
function tf2:objectives/control_point/visuals/capture_progress/red/wheel
function tf2:objectives/control_point/find_index/reinsert