#> tf2:objectives/control_point/gamestate
#
# @context marker
# @within tf2:tick
# @handles game progress & win conditions

scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.control_point] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current

execute store result score $cp_count tf2.var if entity @e[type=marker,tag=tf2.control_point,tag=tf2.current]
execute store result score $red_cp_count tf2.var if entity @e[type=marker,tag=tf2.control_point,tag=tf2.current,scores={tf2.team=1}]
execute store result score $blu_cp_count tf2.var if entity @e[type=marker,tag=tf2.control_point,tag=tf2.current,scores={tf2.team=2}]

scoreboard players operation $neutral_cp_count tf2.var = $cp_count tf2.var
scoreboard players operation $neutral_cp_count tf2.var -= $red_cp_count tf2.var
scoreboard players operation $neutral_cp_count tf2.var -= $blu_cp_count tf2.var

# Gamemode key: 1 = A/D, 2 = Symmetrical CP, 3 = KOTH, 4 = Dom, 5 = Hybrid CP+CTF
scoreboard players reset $winner tf2.team
execute if score $red_cp_count tf2.var = $cp_count tf2.var if score @s tf2.gamemode matches 2 unless entity @s[tag=tf2.multistage] run scoreboard players set $winner tf2.team 1
execute if score $blu_cp_count tf2.var = $cp_count tf2.var if score @s tf2.gamemode matches 1..2 unless entity @s[tag=tf2.multistage] run scoreboard players set $winner tf2.team 2
# execute if score $red_cp_count tf2.var = $cp_count tf2.var if score @s tf2.gamemode matches 2 if entity @s[tag=tf2.multistage] run function tf2:start_next_stage
# execute if score $blu_cp_count tf2.var = $cp_count tf2.var if score @s tf2.gamemode matches 1..2 if entity @s[tag=tf2.multistage] run function tf2:start_next_stage
execute if score $winner tf2.team = $winner tf2.team run function tf2:reset/as_marker

tag @e[type=marker,tag=tf2.control_point,tag=tf2.current] remove tf2.current