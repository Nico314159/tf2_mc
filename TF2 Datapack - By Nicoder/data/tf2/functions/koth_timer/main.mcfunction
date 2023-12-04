execute store result storage tf2.__temp__:index i int 1 run scoreboard players get @s tf2.batch_number
function tf2:koth_timer/display with storage tf2.__temp__:index
execute if score @s tf2.team matches 0 run return 0
execute if score @s tf2.team matches 1 run data modify storage tf2.__temp__:index name set value "red"
execute if score @s tf2.team matches 2 run data modify storage tf2.__temp__:index name set value "blu"
function tf2:koth_timer/update with storage tf2.__temp__:index
scoreboard players set __logic__0 tf2.var 0
execute if score @s tf2.red_timer matches 0 run scoreboard players set __logic__0 tf2.var 1
execute unless score __logic__0 tf2.var matches 1 if score @s tf2.blu_timer matches 0 run scoreboard players set __logic__0 tf2.var 1
execute if score __logic__0 tf2.var matches 1 run function tf2:koth_timer/zero