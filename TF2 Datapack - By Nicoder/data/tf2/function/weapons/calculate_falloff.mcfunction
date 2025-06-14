scoreboard players set __if_else__ tf2.var 0
execute if score $_rangeDependent_ tf2.var matches 1.. run function tf2:__private__/if_else/13
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/15