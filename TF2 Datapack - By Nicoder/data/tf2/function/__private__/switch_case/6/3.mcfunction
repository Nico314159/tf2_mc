scoreboard players operation $_ammoCost_ tf2.var = $_maxClip_ tf2.var
scoreboard players operation $_ammoCost_ tf2.var -= $_clip_ tf2.var
scoreboard players operation $_ammoCost_ tf2.var < $_ammo_ tf2.var
scoreboard players operation $_clip_ tf2.var += $_ammoCost_ tf2.var
scoreboard players operation $_ammo_ tf2.var -= $_ammoCost_ tf2.var