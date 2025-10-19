execute store result score $x player_motion.api.launch run scoreboard players set $z player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 5500
execute store result score $input tf2.var run data get entity @s Rotation[0] 10
function tf2:math/sine
scoreboard players operation $sine tf2.var = $output tf2.var
scoreboard players operation $sine tf2.var *= 3 tf2.const
scoreboard players operation $sine tf2.var /= 2 tf2.const
function tf2:math/cosine
scoreboard players operation $cosine tf2.var = $output tf2.var
scoreboard players operation $cosine tf2.var *= 3 tf2.const
scoreboard players operation $cosine tf2.var /= 2 tf2.const
execute if predicate tf2:input/left run scoreboard players operation $x player_motion.api.launch += $cosine tf2.var
execute if predicate tf2:input/left run scoreboard players operation $z player_motion.api.launch += $sine tf2.var
execute if predicate tf2:input/right run scoreboard players operation $x player_motion.api.launch -= $cosine tf2.var
execute if predicate tf2:input/right run scoreboard players operation $z player_motion.api.launch -= $sine tf2.var
execute if predicate tf2:input/forward run scoreboard players operation $x player_motion.api.launch -= $sine tf2.var
execute if predicate tf2:input/forward run scoreboard players operation $z player_motion.api.launch += $cosine tf2.var
execute if predicate tf2:input/backward run scoreboard players operation $x player_motion.api.launch += $sine tf2.var
execute if predicate tf2:input/backward run scoreboard players operation $z player_motion.api.launch -= $cosine tf2.var
function player_motion:api/launch_xyz
scoreboard players add @s tf2.permanent.double_jumps 1
scoreboard players set @s tf2.can_double_jump 0