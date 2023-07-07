scoreboard players set __if_else__ tf2.var 0
execute if score $batch_markers tf2.var < $max_batches tf2.settings run function tf2:__private__/if_else/1
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/2
execute store result score $batch_markers tf2.var if entity @e[type=marker,tag=tf2.batch]
scoreboard players reset $index tf2.batch_number
execute as @e[type=marker,tag=tf2.batch] unless score @s tf2.batch_number = @s tf2.batch_number run function tf2:__private__/anonymous/1
execute unless score $batch_markers tf2.var = $max_batches tf2.settings run function tf2:setup_markers