playsound minecraft:block.fire.extinguish player @a[distance=..1]
tag @s remove tf2.on_fire
tellraw @a ["",{"selector":"@s","type":"selector"},{"text":" was successfully extinguished!"}]
scoreboard players set $successful_extinguish tf2.var 1