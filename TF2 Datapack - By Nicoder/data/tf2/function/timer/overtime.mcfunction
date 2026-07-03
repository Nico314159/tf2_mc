$execute if entity @s[tag=!tf2.overtime] run tellraw @a[scores={tf2.batch_number=$(i)}] "Overtime."
tag @s add tf2.overtime
$bossbar set tf2:timer_$(i) color red
$bossbar set tf2:timer_$(i) max 100
$bossbar set tf2:timer_$(i) value 0
tag @e[type=item_display] remove tf2.current