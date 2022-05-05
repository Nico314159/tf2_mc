execute as @a if entity @s[scores={damageTaken=1..},nbt=!{ActiveEffects:[{Id:14b}]},nbt={SelectedItem:{tag:{fakeDeath:1b}}}] run tellraw @a ["",{"selector":"@s"}," was slain by",{"selector":"@p"}]
execute as @a if entity @s[scores={damageTaken=1..},nbt={SelectedItem:{tag:{fakeDeath:1b}}}] run effect give @s minecraft:speed 3 0 true
execute as @a if entity @s[scores={damageTaken=1..},nbt={SelectedItem:{tag:{fakeDeath:1b}}}] run effect give @s minecraft:invisibility 12 0 true
execute as @a if entity @s[scores={damageTaken=1..},nbt={SelectedItem:{tag:{fakeDeath:1b}}}] run scoreboard players set @s damageTaken 0
