tag @s add self
execute if entity @s[tag=!tf2.disguised,scores={tf2.is_invisible=0}] run function tf2:class/spy/thick_smoke
execute if entity @s[tag=tf2.disguised,scores={tf2.is_invisible=0}] run function tf2:class/spy/light_smoke
function tf2:class/spy/title_image
execute unless score @s tf2.team = @s tf2.disguise.team at @s anchored eyes run function tf2:class/spy/nametag/create
tag @s remove self
tag @s add tf2.disguised