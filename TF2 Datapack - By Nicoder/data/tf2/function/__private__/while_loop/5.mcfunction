execute store result score $i tf2.door.id run data get storage tf2:lookup events.doors[-1].id
execute as @e[type=item_display,tag=tf2.door] if score @s tf2.batch_number = $local tf2.batch_number if score @s tf2.door.id = $i tf2.door.id store result score @s tf2.door.state run data get storage tf2:lookup events.doors[-1].state
data remove storage tf2:lookup events.doors[-1]
execute if data storage tf2:lookup events.doors[] run function tf2:__private__/while_loop/5