#> tf2:objectives/control_point/visuals/init
#
# @within tf2:__tick__
# @context all CP entities without tag tf2.init, & their positions
# @writes 
#   score $local tf2.batch_number
#       The game marker that the control point belongs to. Used solely for `tf2:objectives/control_point/find_index/main`.
#   storage tf2.__temp__:lookup points[0].(owner/progress/symbol/extra)
#       All visual data relating to this point's state.
# @reads
#   score @s tf2.team
#       Which team owns the control point (0 = unowned, 1 = RED, 2 = BLU). Used for background color in HUD and for beacon color (placeholder until model is added).
#   score @s tf2.index
#       Which control point this is. Used to determine the letter to show in the corner (0 = A, 10 = B, 20 = C, etc.).
execute if entity @s[tag=tf2.locked] run setblock ~ ~ ~ stone_slab
execute unless entity @s[tag=tf2.locked] run setblock ~ ~ ~ air
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
function tf2:objectives/control_point/find_index/main
execute if score @s tf2.team matches 0 run data modify storage tf2.__temp__:lookup points[0].owner set value "[{\"text\":\"[\",\"color\":\"#F5EACB\"},{\"text\":\"3210=\",\"color\":\"#A1A1A1\"}]"
execute if score @s tf2.team matches 0 run setblock ~ ~-1 ~ white_stained_glass
execute if score @s tf2.team matches 1 run data modify storage tf2.__temp__:lookup points[0].owner set value "[{\"text\":\"[\",\"color\":\"#F5EACB\"},{\"text\":\"3210=\",\"color\":\"#D95A58\"}]"
execute if score @s tf2.team matches 1 run setblock ~ ~-1 ~ red_stained_glass
execute if score @s tf2.team matches 2 run data modify storage tf2.__temp__:lookup points[0].owner set value "[{\"text\":\"[\",\"color\":\"#F5EACB\"},{\"text\":\"3210=\",\"color\":\"#517AB8\"}]"
execute if score @s tf2.team matches 2 run setblock ~ ~-1 ~ blue_stained_glass
data modify storage tf2.__temp__:lookup points[0].progress set value "[{\"text\":\"321))))))))))))))\",\"color\":\"gray\"}]"
execute if entity @s[tag=!tf2.locked,tag=!tf2.star] run data modify storage tf2.__temp__:lookup points[0].symbol set value "[\"\"]"
execute if entity @s[tag=tf2.locked] run data modify storage tf2.__temp__:lookup points[0].symbol set value "[{\"text\":\"320L@\",\"font\":\"tf2:square\"}]"
execute if entity @s[tag=tf2.star] run data modify storage tf2.__temp__:lookup points[0].symbol set value "[{\"text\":\"321S!)\",\"font\":\"tf2:square\"}]"
execute unless entity @s[tag=tf2.letter] run data modify storage tf2.__temp__:lookup points[0].extra set value "[{\"text\":\"$#)\",\"font\":\"tf2:square\"}]"
execute if entity @s[tag=tf2.letter] if score @s tf2.index matches 0 run data modify storage tf2.__temp__:lookup points[0].extra set value "[{\"text\":\"3210|]\",\"color\":\"gray\"},{\"text\":\"|21A$#\",\"color\":\"black\"}]"
execute if entity @s[tag=tf2.letter] if score @s tf2.index matches 10 run data modify storage tf2.__temp__:lookup points[0].extra set value "[{\"text\":\"3210|]\",\"color\":\"gray\"},{\"text\":\"|21B$#\",\"color\":\"black\"}]"
execute if entity @s[tag=tf2.letter] if score @s tf2.index matches 20 run data modify storage tf2.__temp__:lookup points[0].extra set value "[{\"text\":\"3210|]\",\"color\":\"gray\"},{\"text\":\"|21C$#\",\"color\":\"black\"}]"
execute if entity @s[tag=tf2.letter] if score @s tf2.index matches 30 run data modify storage tf2.__temp__:lookup points[0].extra set value "[{\"text\":\"3210|]\",\"color\":\"gray\"},{\"text\":\"|21D$#\",\"color\":\"black\"}]"
execute if entity @s[tag=tf2.letter] if score @s tf2.index matches 40 run data modify storage tf2.__temp__:lookup points[0].extra set value "[{\"text\":\"3210|]\",\"color\":\"gray\"},{\"text\":\"|21E$#\",\"color\":\"black\"}]"
function tf2:objectives/control_point/find_index/reinsert
tag @s add tf2.init