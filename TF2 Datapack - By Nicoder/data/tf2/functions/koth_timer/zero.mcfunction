$execute as @e[type=marker,tag=tf2.objective,scores={tf2.batch_number=$(i)},limit=1] store success score $do_overtime tf2.var if score @s tf2.$(name)_progress < @s tf2.capture_threshold
$tag @s remove tf2.$(name)_overtime
$execute if score $do_overtime tf2.var matches 1 run tag @s add tf2.$(name)_overtime
execute unless score $do_overtime tf2.var matches 1.. run function tf2:koth_timer/end_game