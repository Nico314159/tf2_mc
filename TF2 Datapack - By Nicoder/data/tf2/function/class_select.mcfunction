clear @s[scores={tf2.class=1..9}]
function tf2:remove_gameplay_effects
execute if data storage tf2:vars class_name run function tf2:give/internal with storage tf2:vars
playsound tf2:pickup.ammo player @s[scores={tf2.health=1..,tf2.class=1..9}]