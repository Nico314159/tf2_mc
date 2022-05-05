execute if score $value timer matches 1.. run scoreboard players remove $value timer 1
scoreboard players operation $seconds timer = $value timer
scoreboard players operation $minutes timer = $value timer
scoreboard players operation $seconds timer /= #20 const
scoreboard players operation $seconds timer %= #60 const
scoreboard players operation $minutes timer /= #1200 const
# scoreboard players operation $Seconds timer = $seconds timer
# scoreboard players operation $Minutes timer = $minutes timer

execute if block 1054 103 3911 minecraft:white_stained_glass run scoreboard players set $team_in_control timer 0

execute if block 1054 103 3911 minecraft:red_stained_glass run scoreboard players set $team_in_control timer 1
execute if score $team_in_control timer matches 1 if score $red_value timer matches 1.. run scoreboard players remove $red_value timer 1
scoreboard players operation $red_seconds timer = $red_value timer
scoreboard players operation $red_minutes timer = $red_value timer
scoreboard players operation $red_seconds timer /= #20 const
scoreboard players operation $red_seconds timer %= #60 const
scoreboard players operation $red_minutes timer /= #1200 const

execute if block 1054 103 3911 minecraft:light_blue_stained_glass run scoreboard players set $team_in_control timer 2
execute if score $team_in_control timer matches 2 if score $blu_value timer matches 1.. run scoreboard players remove $blu_value timer 1
scoreboard players operation $blu_seconds timer = $blu_value timer
scoreboard players operation $blu_minutes timer = $blu_value timer
scoreboard players operation $blu_seconds timer /= #20 const
scoreboard players operation $blu_seconds timer %= #60 const
scoreboard players operation $blu_minutes timer /= #1200 const

execute if block 1054 103 3911 minecraft:lime_stained_glass run scoreboard players set $team_in_control timer 3
execute if score $team_in_control timer matches 3 if score $grn_value timer matches 1.. run scoreboard players remove $grn_value timer 1
scoreboard players operation $grn_seconds timer = $grn_value timer
scoreboard players operation $grn_minutes timer = $grn_value timer
scoreboard players operation $grn_seconds timer /= #20 const
scoreboard players operation $grn_seconds timer %= #60 const
scoreboard players operation $grn_minutes timer /= #1200 const

execute if block 1054 103 3911 minecraft:yellow_stained_glass run scoreboard players set $team_in_control timer 4
execute if score $team_in_control timer matches 4 if score $ylw_value timer matches 1.. run scoreboard players remove $ylw_value timer 1
scoreboard players operation $ylw_seconds timer = $ylw_value timer
scoreboard players operation $ylw_minutes timer = $ylw_value timer
scoreboard players operation $ylw_seconds timer /= #20 const
scoreboard players operation $ylw_seconds timer %= #60 const
scoreboard players operation $ylw_minutes timer /= #1200 const