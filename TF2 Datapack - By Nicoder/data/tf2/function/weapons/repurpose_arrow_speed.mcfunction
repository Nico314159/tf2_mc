execute store result storage tf2:vars magnitude int 1 run scoreboard players get $magnitude tf2.var
execute if score $Settings.show_debug_messages tf2.var matches 1.. run tellraw @a ["before multiplication =",{color:green,nbt:"item.components.minecraft:custom_data.projectile.speed",storage:"tf2:lookup"}]
function tf2:__private__/anonymous/10 with storage tf2:vars
execute if score $Settings.show_debug_messages tf2.var matches 1.. run tellraw @a ["after multiplication =",{color:aqua,nbt:"item.components.minecraft:custom_data.projectile.speed",storage:"tf2:lookup"}]