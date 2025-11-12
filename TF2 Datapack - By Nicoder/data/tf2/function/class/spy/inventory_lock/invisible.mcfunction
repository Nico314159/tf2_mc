clear @s *[!custom_data~{cloak:"uncloak"}]
loot replace entity @s weapon.offhand loot tf2:class/spy/invis_watch_gui_only
execute store result score $_count_ tf2.var run clear @s *[custom_data~{cloak:"uncloak"}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{cloak:"uncloak"}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s weapon.offhand loot tf2:class/spy/invis_watch_gui_only