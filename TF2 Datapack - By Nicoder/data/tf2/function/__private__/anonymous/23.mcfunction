scoreboard players set __if_else__ tf2.var 0
execute if score @s tf2.team = $winner tf2.var run function tf2:__private__/if_else/27
execute if score __if_else__ tf2.var matches 0 if score $winner tf2.var matches 1..2 run tellraw @s {"text":"You've failed!","bold":false,"italic":true,"type":"text"}