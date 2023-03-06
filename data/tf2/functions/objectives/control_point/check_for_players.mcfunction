#> tf2:objectives/control_point/check_for_players
# 
# @within tf2:tick
# @context marker & position
# @output
#   score $(red|blu)_on_point tf2.var
#       The number of RED/BLU players on the control point 

tag @s remove tf2.contested

execute as @e[type=#tf2:player_like, distance=..1, tag=!tf2.unable_to_cap] run tag @s add tf2.on_point
execute store result score $red_on_point tf2.var if entity @e[tag=tf2.on_point, scores={tf2.team=1}]
execute store result score $blu_on_point tf2.var if entity @e[tag=tf2.on_point, scores={tf2.team=2}]

execute if score $red_on_point tf2.var matches 1.. if score $blu_on_point tf2.var matches 1.. run tag @s add tf2.contested

execute as @s[tag=!tf2.contested] run function tf2:objectives/control_point/main