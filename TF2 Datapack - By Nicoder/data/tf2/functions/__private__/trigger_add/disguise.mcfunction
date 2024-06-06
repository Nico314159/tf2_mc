tag @s remove tf2.disguised
scoreboard players set $error tf2.var 0
execute unless score @s tf2.class matches 1 store result score $error tf2.var run tellraw @s {"text":"ERROR: You can't use disguises if you're not playing as the Spy.","color":"yellow","italic":true,"type":"text"}
execute unless score @s disguise matches 11..19 unless score @s disguise matches 21..29 store result score $error tf2.var run tellraw @s ["",{"text":"ERROR: Cannot interpret disguise value of ","color":"yellow","italic":true,"type":"text"},{"bold":true,"score":{"name":"@s","objective":"disguise"},"color":"yellow","type":"score"},{"text":".","bold":true,"color":"yellow"}]
execute store result score @s tf2.disguise.team run scoreboard players operation @s tf2.disguise.class = @s disguise
scoreboard players operation @s tf2.disguise.team /= 10 tf2.const
scoreboard players operation @s tf2.disguise.class %= 10 tf2.const
execute if score @s tf2.disguise.class matches 1 if score @s tf2.disguise.team = @s tf2.team run scoreboard players set $error tf2.var 1
execute unless score $error tf2.var matches 1.. run tag @s add tf2.disguised
scoreboard players set @s disguise 0
scoreboard players enable @s disguise