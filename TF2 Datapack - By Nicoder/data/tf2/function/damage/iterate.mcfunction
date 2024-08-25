execute store result score $cause tf2.var run data get storage tf2:lookup damages[-1].cause
execute store result score $target tf2.var run data get storage tf2:lookup damages[-1].target
execute store result score $amount tf2.var run data get storage tf2:lookup damages[-1].amount
execute store result score $instakill tf2.var run data get storage tf2:lookup damage[-1].instakill
execute as @a[tag=tf2.is_playing] if score @s tf2.player.id = $target tf2.var run function tf2:damage/apply
tag @a remove tf2.cause
data remove storage tf2:lookup damages[-1]