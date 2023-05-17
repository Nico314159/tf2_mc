#> tf2:objectives/control_point/find_index/main
#
# @within
#   tf2:objectives/control_point/**
#   tf2:reset/**
# @context CP entity
# @input
#   score $local tf2.batch_number
#   score @s tf2.index
#       Storage address of the current control point and the game it belongs to.
# @reads
#   storage tf2:control_points info[$local...][@s tf2.index]
#       owner: RawTextComponent (font = tf2:square)
#           Team-color square to show who controls the point. Flickers when opponents are attacking the point.
#       progress: RawTextComponent (font = tf2:square)
#           Team-color triangle that shows how close is point is to being taken. Points left-to-right for BLU progress, and right-to-left for RED progress.
#       symbol: RawTextComponent (font = tf2:square)
#           Most commonly a locked indictator, but also includes the star for cp_steel's final point, and any other special symbols for specific maps.
#       extra: RawTextComponent (font = tf2:square)
#           Blank by default. If tf2.letter tag is present, displays the letter of the control point in sequence.
#
#       wheel.owner: RawTextComponent (font = tf2:wheel) 
#           Team-color circle in title to show who controls the point. Only shown to players on the point.
#       wheel.progress: RawTextComponent (font = tf2:wheel) 
#           Team-color wedge sector in title to show how close is point is to being taken. Only shown to players on the point.
#       wheel.spacing: RawTextComponent (font = tf2:wheel) 
#           Space characters used to make sure the wheel indicator points to the correct control point.
# @output
#   storage tf2.__temp__:lookup points[0]
#       Dynamically-editable copy of all data in the `tf2:control_points info[$local...][@s tf2.index]` storage path.
#       Can be copied back to the original path using `function tf2:objectives/control_point/find_index/reinsert/main`.
scoreboard players operation $mini_index tf2.var = @s tf2.index
scoreboard players operation $mini_index tf2.var /= 10 tf2.const
function tf2:__private__/hardcode_switch/75