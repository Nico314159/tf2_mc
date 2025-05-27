scoreboard players operation $x player_motion.api.launch = $output_vector_x tf2.var
scoreboard players operation $x player_motion.api.launch *= 12 tf2.const
scoreboard players operation $y player_motion.api.launch = $output_vector_y tf2.var
scoreboard players operation $y player_motion.api.launch *= 12 tf2.const
scoreboard players operation $z player_motion.api.launch = $output_vector_z tf2.var
scoreboard players operation $z player_motion.api.launch *= 12 tf2.const
function player_motion:api/launch_xyz