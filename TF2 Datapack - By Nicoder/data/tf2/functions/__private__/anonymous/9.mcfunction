scoreboard players set __if_else__ tf2.var 0
execute if score @s tf2.team = $winner tf2.var run function tf2:__private__/if_else/30
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/31