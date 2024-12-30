scoreboard players operation $x player_motion.api.launch = @s tf2.now_x
scoreboard players operation $x player_motion.api.launch -= @s tf2.last_x
scoreboard players operation $x player_motion.api.launch *= 4 tf2.const
scoreboard players operation $x player_motion.api.launch < 2000 tf2.const
scoreboard players operation $x player_motion.api.launch > -2000 tf2.const
scoreboard players set $y player_motion.api.launch 5500
scoreboard players operation $z player_motion.api.launch = @s tf2.now_z
scoreboard players operation $z player_motion.api.launch -= @s tf2.last_z
scoreboard players operation $z player_motion.api.launch *= 4 tf2.const
scoreboard players operation $z player_motion.api.launch < 2000 tf2.const
scoreboard players operation $z player_motion.api.launch > -2000 tf2.const
function player_motion:api/launch_xyz
item modify entity @s armor.chest {"function":"minecraft:set_components","components":{"!minecraft:glider":{}}}
scoreboard players set @s tf2.elytra_detect 0
scoreboard players add @s tf2.permanent.double_jumps 1
scoreboard players set @s tf2.can_double_jump 0