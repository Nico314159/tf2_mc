$execute if score $z tf2.var matches 0 if score $x tf2.var > $y tf2.var run data modify storage tf2:vars param set value '~1 ~$(fraction) ~'
$execute if score $z tf2.var matches 0 if score $x tf2.var <= $y tf2.var run data modify storage tf2:vars param set value '~$(fraction) ~1 ~'
$execute if score $x tf2.var matches 0 if score $z tf2.var > $y tf2.var run data modify storage tf2:vars param set value '~ ~$(fraction) ~1'
$execute if score $x tf2.var matches 0 if score $z tf2.var <= $y tf2.var run data modify storage tf2:vars param set value '~ ~1 ~$(fraction)'