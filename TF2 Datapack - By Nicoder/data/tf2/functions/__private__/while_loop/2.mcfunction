scoreboard players remove $i tf2.door.id 1
execute summon item_display run function tf2:door/initialize_path
data remove storage tf2:summon doors[-1]
execute if score $i tf2.door.id matches 1.. run function tf2:__private__/while_loop/2