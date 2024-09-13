execute store result score $full_bar tf2.var run data get entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.attributes.uber.build
execute if score @s tf2.ubercharge < $full_bar tf2.var run return fail
tag @s add self
execute as @e[type=#tf2:player_like,tag=!self] if score @s tf2.player.id = @p[tag=self] tf2.heal_target at @s run tag @s add tf2.uber_patient
tag @s add tf2.uber_source
tag @s remove self