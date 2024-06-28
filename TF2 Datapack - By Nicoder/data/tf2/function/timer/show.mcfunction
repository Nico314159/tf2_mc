$execute if entity @e[type=marker,scores={tf2.batch_number=$(i),tf2.gamemode=3}] run return run function tf2:koth_timer/show with storage tf2:index
$bossbar set tf2:timer_$(i) visible true
$bossbar set tf2:timer_$(i) players @a[scores={tf2.batch_number=$(i)}]
$bossbar set tf2:timer_$(i) color white