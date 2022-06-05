scoreboard players add $global tf2.ticks 1
scoreboard players add @a tf2.ticks 1
execute if entity @a[tag=tf2.waiting_room] run scoreboard players add $waiting_room tf2.ticks 1
execute as @a unless score @s tf2.ticks = $global tf2.ticks run function tf2:login

execute as @a[tag=!tf2.waiting_room] run function tf2:select
execute as @a[tag=!tf2.allowed_to_sprint] run function tf2:disable_sprint