# makes the timer bar deplete
# ---------------------------
execute store result bossbar minecraft:timer value run scoreboard players get $value timer
execute if score $value timer matches 1.. run bossbar set minecraft:timer visible true 
execute if score $value timer matches 1.. run bossbar set minecraft:timer players @a
execute if score $value timer matches 1.. run scoreboard players set $ended timer 0

# sets the timer color; green = setup (-2), yellow = normal (0), red = overtime (2)
# ---------------------------------------------------------------------------------
execute if score $phase timer matches -2 run bossbar set minecraft:timer color green
execute if score $phase timer matches 0 run bossbar set minecraft:timer color yellow
execute if score $phase timer matches 2 run bossbar set minecraft:timer color red

# set maximum length of bar
# -------------------------
execute if score $phase timer matches -2 store result bossbar minecraft:timer max run scoreboard players get $setup_length timer
execute if score $phase timer matches 0 store result bossbar minecraft:timer max run scoreboard players get $start timer
execute if score $phase timer matches 2 run bossbar set minecraft:timer max 1200

# setup timers
# ------------
execute if score $seconds timer matches 10..59 if score $phase timer matches -2 run bossbar set minecraft:timer name [{"text":"Setup – "},{"score":{"name":"$minutes","objective":"timer"}},{"text":":"},{"score":{"name":"$seconds","objective":"timer"}},{"text":" remaining"}]
execute if score $seconds timer matches 0..9 if score $phase timer matches -2 run bossbar set minecraft:timer name [{"text":"Setup – "},{"score":{"name":"$minutes","objective":"timer"}},{"text":":0"},{"score":{"name":"$seconds","objective":"timer"}},{"text":" remaining"}]


# end setup time
# --------------
execute if score $seconds timer matches ..1 if score $phase timer matches -2 run function tf:fix_doors
execute if score $phase timer matches -2 if score $value timer matches 0 run scoreboard players add $phase timer 1
execute if score $phase timer matches -1 run scoreboard players operation $value timer = $start timer
execute if score $phase timer matches -1 unless score $value timer matches 0 run scoreboard players add $phase timer 1


# single-stage map timers
# -----------------------
execute if score $seconds timer matches 10..59 if score $stage timer matches 0 if score $phase timer matches 0 run bossbar set minecraft:timer name [{"text":"Round – "},{"score":{"name":"$minutes","objective":"timer"}},{"text":":"},{"score":{"name":"$seconds","objective":"timer"}},{"text":" remaining"}]
execute if score $seconds timer matches 0..9 if score $stage timer matches 0 if score $phase timer matches 0 run bossbar set minecraft:timer name [{"text":"Round – "},{"score":{"name":"$minutes","objective":"timer"}},{"text":":0"},{"score":{"name":"$seconds","objective":"timer"}},{"text":" remaining"}]


# multi-stage map timers
# -----------------------
execute if score $seconds timer matches 10..59 if score $stage timer matches 1.. if score $phase timer matches 0 run bossbar set minecraft:timer name [{"text":"Stage "},{"score":{"name":"$stage","objective":"timer"}},{"text":" - "},{"score":{"name":"$minutes","objective":"timer"}},{"text":":"},{"score":{"name":"$seconds","objective":"timer"}},{"text":" remaining"}]
execute if score $seconds timer matches 0..9 if score $stage timer matches 1.. if score $phase timer matches 0 run bossbar set minecraft:timer name [{"text":"Stage "},{"score":{"name":"$stage","objective":"timer"}},{"text":" - "},{"score":{"name":"$minutes","objective":"timer"}},{"text":":0"},{"score":{"name":"$seconds","objective":"timer"}},{"text":" remaining"}]


# start overtime
# --------------
execute if score $phase timer matches 0 if score $value timer matches 0 if score $overtime_eligible timer matches 1 run scoreboard players add $phase timer 1
execute if score $phase timer matches 1 run scoreboard players set $value timer 1200
execute if score $phase timer matches 1 unless score $value timer matches 0 run scoreboard players add $phase timer 1
execute if score $phase timer matches 2 run scoreboard players set $overtime_eligible timer 0


# overtime
# --------
execute if score $seconds timer matches 10..59 if score $phase timer matches 2 run bossbar set minecraft:timer name [{"text":"Overtime! – "},{"score":{"name":"$minutes","objective":"timer"}},{"text":":"},{"score":{"name":"$seconds","objective":"timer"}},{"text":" remaining"}]
execute if score $seconds timer matches 0..9 if score $phase timer matches 2 run bossbar set minecraft:timer name [{"text":"Overtime! – "},{"score":{"name":"$minutes","objective":"timer"}},{"text":":0"},{"score":{"name":"$seconds","objective":"timer"}},{"text":" remaining"}]


# end of game
# -----------
execute if score $value timer matches 0 if score $overtime_eligible timer matches 0 if score $paused timer matches 0 if score $ended timer matches 0 run scoreboard players add $continuation timer 1
execute if score $continuation timer matches 70.. run bossbar set minecraft:timer visible false 
execute if score $ended timer matches 1 run bossbar set minecraft:timer visible false 
execute if score $continuation timer matches 40 if score $ending_type timer matches 1 if score $ended timer matches 0 run tellraw @a[tag=playingGrass] {"text":"RED wins!!","color":"red"}
execute if score $continuation timer matches 40 if score $ending_type timer matches 0 if score $ended timer matches 0 run tellraw @a[tag=playingGrass] {"text":"Stalemate...","color":"gray"}
execute if score $continuation timer matches 70.. run scoreboard players set $ended timer 1
execute if score $continuation timer matches 70.. run scoreboard players set $phase timer 0
execute if score $continuation timer matches 70.. run scoreboard players set $paused timer 1
execute if score $continuation timer matches 70.. run scoreboard players set $continuation timer 0
