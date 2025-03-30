function retina:traverse/setup
execute unless data storage retina:output {Target:"ENTITY"} run return fail
execute if entity @a[tag=retina.target,gamemode=spectator] run return fail
scoreboard players operation $current tf2.team = @s tf2.team
execute as @a[tag=retina.target,limit=1] if score @s tf2.team = $current tf2.team run return fail
execute store result score $enemy_dist tf2.var run data get storage retina:output Distance 10
execute store result score $backstab_range tf2.var run data get entity @s SelectedItem.components.minecraft:custom_data.attributes.range 50
scoreboard players operation $backstab_range tf2.var /= 6 tf2.const
execute if score $enemy_dist tf2.var > $backstab_range tf2.var run return fail
data modify storage tf2:lookup spy_pos set from entity @s Pos
data modify storage tf2:lookup enemy_pos set from entity @a[tag=retina.target,limit=1] Pos
execute at @s summon marker run tag @s add get_pos
execute as @e[type=marker,tag=get_pos] run tp @s ~ ~ ~ facing entity @a[tag=retina.target,limit=1] feet
execute as @e[type=marker,tag=get_pos] run function tf2:math/facing_vector
execute as @e[type=marker,tag=get_pos] run kill @s
function tf2:math/feed_left
execute as @a[tag=retina.target,limit=1] run function tf2:math/facing_vector
function tf2:math/feed_right
function tf2:math/dot_product
execute if score $dot_product tf2.var matches ..-1 run return fail
function tf2:math/facing_vector
function tf2:math/feed_right
function tf2:math/dot_product
execute if score $dot_product tf2.var matches ..499 run return fail
execute as @a[tag=retina.target,limit=1] run function tf2:math/facing_vector
function tf2:math/feed_left
function tf2:math/dot_product
execute if score $dot_product tf2.var matches ..-301 run return fail
item modify entity @s weapon.mainhand tf2:class/spy/raise_knife