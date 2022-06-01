scoreboard players operation #temp_long pairedOwnerUUID = @s pairedOwnerUUID
execute as @e[type=marker,tag=return] if score @s pairedOwnerUUID = #temp_long pairedOwnerUUID run tag @s add activate
tp @s @e[type=marker,tag=return,tag=activate,limit=1]
kill @e[type=marker,tag=return,tag=activate]
scoreboard players reset #temp_long pairedOwnerUUID
