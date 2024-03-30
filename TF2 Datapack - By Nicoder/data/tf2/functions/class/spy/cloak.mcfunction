execute if score @s tf2.cloak matches ..0 run return run function tf2:swap_hands
scoreboard players set @s tf2.is_invisible 1
effect give @s[scores={tf2.is_invisible=1}] invisibility infinite 0 true