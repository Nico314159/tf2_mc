$execute store result bossbar tf2:red_timer_$(i) max store result bossbar tf2:red_timer_$(i) value store result score @s tf2.red_timer store result bossbar tf2:blu_timer_$(i) max store result bossbar tf2:blu_timer_$(i) value store result score @s tf2.blu_timer run data get entity @s data.map.timer 20
$function tf2:koth_timer/update/red {"i":"$(i)"}
$function tf2:koth_timer/update/blu {"i":"$(i)"}