scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
tellraw @a[tag=tf2.current] ["",{"selector":"@a[tag=retina.executing]","type":"selector"},{"text":" killed "},{"selector":"@s","type":"selector"},{"text":" with "},{"type":"nbt","source":"entity","nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@a[tag=retina.executing]"}]
tag @a remove tf2.current