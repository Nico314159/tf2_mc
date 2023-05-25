data modify entity @s Pos set from storage tf2.__temp__:summon objectives[0].Pos
data modify entity @s Tags set from storage tf2.__temp__:summon objectives[0].Tags
execute store result score @s tf2.team run data get storage tf2.__temp__:summon objectives[0].data.team 1
execute store result score @s tf2.capture_threshold run data get storage tf2.__temp__:summon objectives[0].data.capture_threshold 20000
execute store result score @s tf2.increment run data get storage tf2.__temp__:summon objectives[0].data.increment 20
scoreboard players operation @s tf2.gamemode = $temp tf2.gamemode
scoreboard players operation @s tf2.index = $temp tf2.index
scoreboard players operation $highest tf2.index = @s tf2.index
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number
scoreboard players operation @s[scores={tf2.team=1}] tf2.red_progress = @s tf2.capture_threshold
scoreboard players operation @s[scores={tf2.team=2}] tf2.blu_progress = @s tf2.capture_threshold
tag @s[scores={tf2.index=0,tf2.gamemode=2}] add tf2.last