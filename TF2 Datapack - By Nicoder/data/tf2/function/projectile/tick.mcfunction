tag @s add self
execute on passengers run data modify entity @e[tag=self,limit=1] Motion set from entity @s[tag=!tf2.drag] item.components.minecraft:custom_data.Motion
execute on passengers run data modify entity @e[tag=self,limit=1] Pos[0] set from entity @s Pos[0]
execute on passengers run data modify entity @e[tag=self,limit=1] Pos[2] set from entity @s Pos[2]
tag @s remove self