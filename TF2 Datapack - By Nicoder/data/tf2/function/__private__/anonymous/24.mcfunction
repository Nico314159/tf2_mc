execute if score @s tf2.team = $winner tf2.var run return run tellraw @s {"text":"Victory.","bold":false,"italic":true,"type":"text"}
execute if score $winner tf2.var matches 1..2 run tellraw @s {"text":"You've failed!","bold":false,"italic":true,"type":"text"}
tag @s add tf2.humiliation