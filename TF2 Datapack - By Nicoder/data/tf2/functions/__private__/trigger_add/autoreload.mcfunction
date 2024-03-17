scoreboard players set __if_else__ tf2.var 0
execute if entity @s[tag=tf2.autoreload] run function tf2:__private__/if_else/1
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/2
scoreboard players set @s autoreload 0
scoreboard players enable @s autoreload