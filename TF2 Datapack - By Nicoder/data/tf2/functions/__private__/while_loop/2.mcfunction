execute summon item_display run function tf2:door/initialize_path
data remove storage tf2:summon doors[-1]
execute if data storage tf2:summon doors[] run function tf2:__private__/while_loop/2