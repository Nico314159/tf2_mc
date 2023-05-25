execute if score $show_debug_messages tf2.settings matches 1 run tellraw Nico314 ["",{"text":"<Debug> ","bold":true},"Game controlled by ",{"selector":"@s"}," has ended at ",{"score":{"name":"$global","objective":"tf2.ticks"}}," ticks gametime"]
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute as @e[type=marker,tag=tf2.control_point,tag=tf2.current] at @s run function tf2:reset/as_objectives
execute as @a[tag=tf2.current] run function tf2:reset/as_players
kill @s
function tf2:setup_markers