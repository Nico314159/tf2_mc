execute if score #show_debug_messages tf2.settings matches 1 run tellraw @a ["",{"text":"<Debug> ","bold":true},"Player ",{"selector":"@s"}," has logged in at ",{"score":{"name":"#global","objective":"tf2.ticks"}}," ticks gametime."]
# tp @s @e[type=marker, limit=1, tag=lobby]
scoreboard players operation @s tf2.ticks = #global tf2.ticks