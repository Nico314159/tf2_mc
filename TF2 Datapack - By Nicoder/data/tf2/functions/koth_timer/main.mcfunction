execute store result storage tf2.__temp__:index i int 1 run scoreboard players get @s tf2.batch_number
function tf2:koth_timer/display with storage tf2.__temp__:index
execute if score @s tf2.team matches 0 run return 0
execute if score @s[tag=!tf2.red_overtime,tag=!tf2.ended] tf2.team matches 1 run function tf2:koth_timer/update/red with storage tf2.__temp__:index
execute if score @s[tag=!tf2.blu_overtime,tag=!tf2.ended] tf2.team matches 2 run function tf2:koth_timer/update/blu with storage tf2.__temp__:index
execute if score @s[tag=!tf2.ended] tf2.red_timer matches 0 run function tf2:koth_timer/zero/red
execute if score @s[tag=!tf2.ended] tf2.blu_timer matches 0 run function tf2:koth_timer/zero/blu
scoreboard players remove @s[tag=tf2.ended] tf2.timer 1
execute if score @s tf2.timer matches -100 run function tf2:reset/as_marker