execute store result score $_weaponID_ tf2.var run data get entity @s SelectedItem.tag.CustomModelData 0.001
execute unless score $_weaponID_ tf2.var matches 61 run return run function retina:traverse/multicast
data merge storage retina:input {HorizontalCount:1,VerticalCount:1,CenteredCount:0}
function retina:traverse/multicast
function retina:traverse/multicast
function retina:traverse/multicast
function retina:traverse/multicast