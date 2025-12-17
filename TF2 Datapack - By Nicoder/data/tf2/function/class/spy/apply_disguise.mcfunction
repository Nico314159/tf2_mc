tag @s remove tf2.in_disguise_menu
tag @s add tf2.need_to_switch_away
scoreboard players set $remove_disguise tf2.var 0
execute unless score @s tf2.class matches 1 store result score $remove_disguise tf2.var run tellraw @s {"text":"ERROR: You can't use disguises if you're not playing as the Spy.","color":"yellow","italic":true,"type":"text"}
scoreboard players operation $class tf2.var = @s tf2.disguise
scoreboard players operation $class tf2.var %= 10 tf2.const
scoreboard players operation $team tf2.var = @s tf2.disguise
scoreboard players operation $team tf2.var /= 10 tf2.const
execute if score $team tf2.var matches 1 run data modify storage tf2:disguise team set value 'red'
execute if score $team tf2.var matches 2 run data modify storage tf2:disguise team set value 'blu'
execute unless score $team tf2.var matches 1..2 store result score $remove_disguise tf2.var run tellraw @s {"text":"ERROR: Invalid number. Server restart may be necessary.","color":"yellow","italic":true,"type":"text"}
execute if score $class tf2.var matches 1 if score $team tf2.var = @s tf2.team run scoreboard players set $remove_disguise tf2.var 1
attribute @s minecraft:movement_speed modifier remove tf2:match_disguise_speed
scoreboard players reset $team tf2.var
execute if score $remove_disguise tf2.var matches 1.. run return run function tf2:class/spy/undisguise
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get $class tf2.var
function tf2:__private__/switch_case/0/select with storage tf2:__storage__
scoreboard players reset $class tf2.var
tag @s add self
execute if entity @s[tag=!tf2.disguised,scores={tf2.is_invisible=0}] run function tf2:class/spy/thick_smoke
execute if entity @s[tag=tf2.disguised,scores={tf2.is_invisible=0}] run function tf2:class/spy/light_smoke
function tf2:class/spy/title_image
execute unless score @s tf2.team = @s tf2.disguise.team at @s anchored eyes run function tf2:class/spy/nametag/create
tag @s remove self
function tf2:__private__/anonymous/2 with storage tf2:disguise
tag @s add tf2.disguised
return 100