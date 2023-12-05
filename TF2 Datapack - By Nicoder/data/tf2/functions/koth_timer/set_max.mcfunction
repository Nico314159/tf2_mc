$execute store result bossbar tf2:red_timer_$(i) max store result bossbar tf2:red_timer_$(i) value store result score @s tf2.red_timer store result bossbar tf2:blu_timer_$(i) max store result bossbar tf2:blu_timer_$(i) value store result score @s tf2.blu_timer run data get entity @s data.map.timer 20
execute store result score @s tf2.red_overtime run scoreboard players set @s tf2.blu_overtime 0
$function tf2:koth_timer/update/red {"i":"$(i)"}
$function tf2:koth_timer/update/blu {"i":"$(i)"}