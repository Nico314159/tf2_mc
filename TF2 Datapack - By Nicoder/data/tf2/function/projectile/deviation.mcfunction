function retina:math/gimbal_to_matrix
execute store result score $horizontal_count retina.__variable__ run scoreboard players set $vertical_count retina.__variable__ 10
execute store result score $spread_least retina.__variable__ run data get storage tf2:summon projectile.deviation.min
execute store result score $spread_most retina.__variable__ run data get storage tf2:summon projectile.deviation.max
function retina:math/sway_heave_surge/find
function retina:math/sway_heave_surge/apply