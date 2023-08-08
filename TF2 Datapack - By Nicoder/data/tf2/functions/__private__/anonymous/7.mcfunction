title @s actionbar ["",{"text":"\u2764 Health: ","color":"red"},{"score":{"name":"@s","objective":"tf2.health"},"color":"red"},{"text":" / ","color":"red"},{"score":{"name":"@s","objective":"tf2.max_health"},"color":"red"}]
scoreboard players remove @s[scores={tf2.attack_delay=0..}] tf2.attack_delay 1000
scoreboard players operation $class tf2.var = @s tf2.class
function tf2:__private__/switch_case/294