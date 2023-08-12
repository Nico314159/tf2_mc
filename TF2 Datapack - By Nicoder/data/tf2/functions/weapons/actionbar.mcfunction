scoreboard players set __if_else__ tf2.var 0
scoreboard players set __logic__0 tf2.var 0
execute if predicate tf2:holding_melee run scoreboard players set __logic__0 tf2.var 1
execute unless score __logic__0 tf2.var matches 1 if predicate tf2:non_damaging run scoreboard players set __logic__0 tf2.var 1
execute if score __logic__0 tf2.var matches 1 run function tf2:__private__/if_else/20
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/21