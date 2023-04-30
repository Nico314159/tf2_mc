#> tf2:start_game/as_marker/tell_info
#
# @within tf2:start_game/as_marker/main
# @context game marker
# @input
#   score @s tf2.gamemode
#       Which gamemode the players have been queued for (1 = A/D, 2 = 5CP, 3 = KOTH, etc).

# WIP
execute if score @s tf2.gamemode matches 1 run tellraw @a[tag=tf2.current] ["",{"text":"Gamemode:","bold":true,"underlined":true},{"text":" Attack / Defend","italic":true,"hoverEvent":{"action":"show_text","contents":["RED starts with all the control points, and BLU must capture all of them. Once a point is captured, it cannot be recaptured by RED. If the timer runs out, RED wins no matter how much progress BLU has made."]}}]
execute if score @s tf2.gamemode matches 2 run tellraw @a[tag=tf2.current] ["",{"text":"Gamemode:","bold":true,"underlined":true},{"text":" Symmetrical Control Points","italic":true,"hoverEvent":{"action":"show_text","contents":["Each team starts out owning half the control points; whichever team captures all of them wins. Stalemate if the timer runs out."]}}]
