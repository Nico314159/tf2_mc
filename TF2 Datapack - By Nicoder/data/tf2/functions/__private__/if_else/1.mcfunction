tellraw @s ["",{"text":"Autoreload is now "},{"text":"disabled.","color":"gray","bold":true,"type":"text"}]
tag @s remove tf2.autoreload
scoreboard players set __if_else__ tf2.var 1