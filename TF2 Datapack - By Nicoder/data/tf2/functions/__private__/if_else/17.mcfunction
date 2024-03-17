execute store result score @s tf2.attack_delay run data get entity @s SelectedItem.tag.attributes.deployTime 10000
execute unless data entity @s SelectedItem.tag.attributes.deployTime run scoreboard players set @s tf2.attack_delay 10000
scoreboard players set @s tf2.consecutive_reload 0
scoreboard players set @s tf2.time_idle 0