# makes the timer bar deplete
# ---------------------------
execute store result bossbar tf2:red_timer value run scoreboard players get $red_value timer
execute if score $red_value timer matches 1.. run bossbar set tf2:red_timer visible true 
execute if score $red_value timer matches 1.. run bossbar set tf2:red_timer players @a
execute if score $red_value timer matches 1.. run scoreboard players set $koth_ended timer 0

execute store result bossbar tf2:blu_timer value run scoreboard players get $blu_value timer
execute if score $blu_value timer matches 1.. run bossbar set tf2:blu_timer visible true 
execute if score $blu_value timer matches 1.. run bossbar set tf2:blu_timer players @a
execute if score $blu_value timer matches 1.. run scoreboard players set $koth_ended timer 0

# set maximum length of bar
# -------------------------
execute store result bossbar tf2:red_timer max run scoreboard players get $start timer
execute store result bossbar tf2:blu_timer max run scoreboard players get $start timer

# setup timers
# ------------
execute if score $red_seconds timer matches 10..59 run bossbar set tf2:red_timer name [{"text":"RED – "},{"score":{"name":"$red_minutes","objective":"timer"}},{"text":":"},{"score":{"name":"$red_seconds","objective":"timer"}},{"text":" remaining"}]
execute if score $red_seconds timer matches 0..9 run bossbar set tf2:red_timer name [{"text":"RED – "},{"score":{"name":"$red_minutes","objective":"timer"}},{"text":":0"},{"score":{"name":"$red_seconds","objective":"timer"}},{"text":" remaining"}]

execute if score $blu_seconds timer matches 10..59 run bossbar set tf2:blu_timer name [{"text":"BLU – "},{"score":{"name":"$blu_minutes","objective":"timer"}},{"text":":"},{"score":{"name":"$blu_seconds","objective":"timer"}},{"text":" remaining"}]
execute if score $blu_seconds timer matches 0..9 run bossbar set tf2:blu_timer name [{"text":"BLU – "},{"score":{"name":"$blu_minutes","objective":"timer"}},{"text":":0"},{"score":{"name":"$blu_seconds","objective":"timer"}},{"text":" remaining"}]


# start overtime
# --------------
execute if score $red_phase timer matches 0 if score $red_value timer matches 0 if score $koth_overtime_eligible timer matches 1 run scoreboard players set $red_phase timer 2
execute if score $blu_phase timer matches 0 if score $blu_value timer matches 0 if score $koth_overtime_eligible timer matches 1 run scoreboard players set $blu_phase timer 2


# overtime
# --------
execute if score $red_phase timer matches 2 run bossbar set tf2:red_timer name [{"text":"RED – Overtime!"}]
execute if score $blu_phase timer matches 2 run bossbar set tf2:blu_timer name [{"text":"BLU – Overtime!"}]

execute if score $red_phase timer matches 2 if score $koth_overtime_eligible timer matches 0 if score $team_in_control timer matches 1 run scoreboard players set $red_phase timer 0
execute if score $blu_phase timer matches 2 if score $koth_overtime_eligible timer matches 0 if score $team_in_control timer matches 2 run scoreboard players set $blu_phase timer 0


# end of game
# -----------
execute if score $red_value timer matches ..0 if score $koth_overtime_eligible timer matches 0 if score $paused timer matches 0 if score $koth_ended timer matches 0 run scoreboard players add $continuation timer 1
execute if score $blu_value timer matches ..0 if score $koth_overtime_eligible timer matches 0 if score $paused timer matches 0 if score $koth_ended timer matches 0 run scoreboard players add $continuation timer 1
execute if score $continuation timer matches 70.. run bossbar set tf2:red_timer visible false 
execute if score $continuation timer matches 70.. run bossbar set tf2:blu_timer visible false 
execute if score $continuation timer matches 40 if score $koth_ended timer matches 0 if score $red_value timer matches ..0 if score $red_phase timer matches 0 if score $team_in_control timer matches 1 run tellraw @a[tag=playingWoodlands] {"text":"RED wins!!","color":"red"}
execute if score $continuation timer matches 40 if score $koth_ended timer matches 0 if score $blu_value timer matches ..0 if score $blu_phase timer matches 0 if score $team_in_control timer matches 2 run tellraw @a[tag=playingWoodlands] {"text":"BLU wins!!","color":"blue"}
execute if score $continuation timer matches 70.. run scoreboard players set $koth_ended timer 1
execute if score $continuation timer matches 70.. run scoreboard players set $red_phase timer 0
execute if score $continuation timer matches 70.. run scoreboard players set $blue_phase timer 0
execute if score $continuation timer matches 70.. run scoreboard players set $woodlands_central_point timer 0
execute if score $continuation timer matches 70.. run scoreboard players set $paused timer 1
execute if score $continuation timer matches 70.. run scoreboard players set $continuation timer 0
