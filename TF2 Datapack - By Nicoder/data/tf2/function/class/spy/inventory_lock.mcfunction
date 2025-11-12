scoreboard players set __if_else__ tf2.var 0
execute if score @s[scores={tf2.is_invisible=1}] tf2.cloak matches 1.. run function tf2:__private__/if_else/4
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/7