execute store result score $sound_modulo tf2.var run scoreboard players operation $damage_modulo tf2.var = @s tf2.afterburn_ticks
scoreboard players operation $damage_modulo tf2.var %= 10 tf2.const
execute if score $damage_modulo tf2.var matches 0 run function tf2:class/pyro/afterburn_damage
scoreboard players operation $sound_modulo tf2.var %= 36 tf2.const
execute if score $sound_modulo tf2.var matches 0 run playsound minecraft:block.fire.ambient master @s ~ ~ ~
tag @s add self
tag @s remove self
scoreboard players add @s tf2.afterburn_ticks 1
execute if score @s tf2.afterburn_ticks >= @s tf2.afterburn_length run tag @s remove tf2.on_fire