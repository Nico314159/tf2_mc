team join delta.no_collide
scoreboard players set @s tf2.age 0
scoreboard players operation @s tf2.team = $temp tf2.team
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number
execute store result score @s tf2.radius on origin run data get entity @s SelectedItem.tag.attributes.explosion.radius
execute store result score @s tf2.damage on origin run data get entity @s SelectedItem.tag.attributes.damage.base
tag @s remove tf2.new