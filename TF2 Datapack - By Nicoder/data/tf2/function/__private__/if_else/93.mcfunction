tag @s remove tf2.in_class_menu
tag @s add tf2.already_seen_class_menu
execute if score @s tf2.class = @s tf2.new_class run return run scoreboard players reset @s tf2.new_class
execute if score @s tf2.class matches 5 run function tf2:class/demoman/erase_all_stickybombs
attribute @s[scores={tf2.class=1}] minecraft:movement_speed modifier remove tf2:match_disguise_speed
attribute @s[scores={tf2.class=6}] minecraft:movement_speed modifier remove tf2:slow_while_revving
execute if score @s tf2.class matches 1..9 unless score @s tf2.class = @s tf2.new_class if entity @s[tag=!tf2.in_spawn] run function tf2:player/death
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get @s tf2.new_class
function tf2:__private__/switch_case/18/select with storage tf2:__storage__
function tf2:class_select
scoreboard players reset @s tf2.new_class