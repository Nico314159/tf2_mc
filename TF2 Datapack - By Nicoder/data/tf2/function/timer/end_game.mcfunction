scoreboard players reset $winner tf2.var
scoreboard players operation $is_symmetric tf2.var = @s tf2.gamemode
scoreboard players operation $is_symmetric tf2.var %= 4 tf2.const
execute if score $is_symmetric tf2.var matches 1 run scoreboard players set $winner tf2.var 1
execute unless score $is_symmetric tf2.var matches 1 run scoreboard players set $winner tf2.var -1
function tf2:reset/announce_winner
tag @e[type=item_display] remove tf2.current