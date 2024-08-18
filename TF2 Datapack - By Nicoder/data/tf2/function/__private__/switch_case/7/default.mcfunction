function tf2:test_items
attribute @s minecraft:generic.movement_speed base set 0
attribute @s minecraft:generic.jump_strength modifier add tf2:no_jump -1 add_multiplied_total
attribute @s minecraft:generic.movement_speed modifier remove tf2:match_disguise_speed