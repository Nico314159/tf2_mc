#> tf2:objectives/control_point/gamestate
#
# @context game marker
# @within tf2:tick
# @handles game progress & win conditions
# @reads
#   score @s tf2.batch_number
#   score ⟨control points⟩ tf2.batch_number
#       Finds the control points that belong to this game marker.
#   score @s tf2.gamemode
#       Which gamemode is being played (see gamemode key below).
#   score @s tf2.timer
#       Amount of time remaining (negative values mean the game is already over but players haven't been relogged yet).
#       Prevents the `tf2:reset/announce_winner` function from being called repeatedly.
# @writes
#   score $cp_count tf2.var
#       Total number of control points in the current game.
#   score $(red/blu)_cp_count tf2.var
#       Number of control points owned by RED/BLU in the current game.
# @output
#   score $winner tf2.team
#       Which team has won the current game (1 = RED, 2 = BLU). Null value if the game is still ongoing.

tag @e remove tf2.current
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.control_point] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current

execute store result score $cp_count tf2.var if entity @e[type=marker,tag=tf2.current]
execute store result score $red_cp_count tf2.var if entity @e[type=marker,tag=tf2.current,scores={tf2.team=1}]
execute store result score $blu_cp_count tf2.var if entity @e[type=marker,tag=tf2.current,scores={tf2.team=2}]


# Gamemode key: 1 = A/D, 2 = Symmetrical CP, 3 = KOTH, 4 = Dom
scoreboard players reset $winner tf2.team
execute if score $red_cp_count tf2.var = $cp_count tf2.var if score @s tf2.gamemode matches 2 unless entity @s[tag=tf2.multistage] run scoreboard players set $winner tf2.team 1
execute if score $blu_cp_count tf2.var = $cp_count tf2.var if score @s tf2.gamemode matches 1..2 unless entity @s[tag=tf2.multistage] run scoreboard players set $winner tf2.team 2
# execute if score $red_cp_count tf2.var = $cp_count tf2.var if score @s tf2.gamemode matches 2 if entity @s[tag=tf2.multistage] run function tf2:start_next_stage
# execute if score $blu_cp_count tf2.var = $cp_count tf2.var if score @s tf2.gamemode matches 1..2 if entity @s[tag=tf2.multistage] run function tf2:start_next_stage
execute if score $winner tf2.team = $winner tf2.team if entity @e[type=marker,tag=tf2.current] unless score @s tf2.timer matches ..-1 run function tf2:reset/announce_winner

tag @e[type=marker,tag=tf2.control_point,tag=tf2.current] remove tf2.current