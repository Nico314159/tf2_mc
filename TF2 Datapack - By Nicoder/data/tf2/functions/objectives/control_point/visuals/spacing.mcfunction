#> tf2:objectives/control_point/visuals/spacing
#
# @within tf2:start_game/as_marker/main
# @context game marker
# @writes 
#   score @s tf2.index
#       Set to 70 so that `tf2:objectives/control_point/find_index/main` fetches `info[@s tf2.batch_number][7]`, which handles spacing.
#   storage tf2.__temp__:lookup points[0].left
#       Space to add at the very beginning, before the timer text.
#   storage tf2.__temp__:lookup points[0].mid
#       Space to add in between the timer text and the control points.
#   storage tf2.__temp__:lookup points[0].right
#       Space to add at the end of the control points row.
# @reads
#   score $highest tf2.index
#       The highest CP index present in the game. Used to determine how many control points there are.
scoreboard players set @s tf2.index 70
function tf2:objectives/control_point/find_index/main
execute if score $highest tf2.index matches 0 run data modify storage tf2.__temp__:lookup points[0].left set value "430"
execute if score $highest tf2.index matches 0 run data modify storage tf2.__temp__:lookup points[0].mid set value "60"
execute if score $highest tf2.index matches 0..10 run data modify storage tf2.__temp__:lookup points[0].right set value "[\"\"]"
execute unless score $highest tf2.index matches 0..10 run data modify storage tf2.__temp__:lookup points[0].left set value "[\"\"]"
execute if score $highest tf2.index matches 10 run data modify storage tf2.__temp__:lookup points[0].left set value "20"
execute if score $highest tf2.index matches 10 run data modify storage tf2.__temp__:lookup points[0].mid set value "6420"
execute if score $highest tf2.index matches 20 run data modify storage tf2.__temp__:lookup points[0].mid set value "6530"
execute if score $highest tf2.index matches 20 run data modify storage tf2.__temp__:lookup points[0].right set value "3210"
execute if score $highest tf2.index matches 30 run data modify storage tf2.__temp__:lookup points[0].mid set value "654320"
execute if score $highest tf2.index matches 30 run data modify storage tf2.__temp__:lookup points[0].right set value "510"
execute if score $highest tf2.index matches 40 run data modify storage tf2.__temp__:lookup points[0].mid set value "740"
execute if score $highest tf2.index matches 40 run data modify storage tf2.__temp__:lookup points[0].right set value "54210"
execute if score $highest tf2.index matches 50 run data modify storage tf2.__temp__:lookup points[0].mid set value "7520"
execute if score $highest tf2.index matches 50 run data modify storage tf2.__temp__:lookup points[0].right set value "6310"
execute if score $highest tf2.index matches 60 run data modify storage tf2.__temp__:lookup points[0].mid set value "75430"
execute if score $highest tf2.index matches 60 run data modify storage tf2.__temp__:lookup points[0].right set value "643210"
function tf2:objectives/control_point/find_index/reinsert
# repurposes the marker's `tf2.index` score to hold the total number of CPs.
scoreboard players operation @s tf2.index = $highest tf2.index
scoreboard players operation @s tf2.index /= 10 tf2.const
scoreboard players add @s tf2.index 1