#> tf2:disable_sprint
#
# Prevents players from sprinting by giving them an attribute modifier that cancels it out exactly.
#
# @within tf2:tick
# @context all players without tf2.allowed_to_sprint tag (tag exists only for debugging)
# @reads
#	predicate tf2:sprinting

attribute @s[predicate=tf2:sprinting] minecraft:generic.movement_speed modifier add 70726576-656e-7473-7072-696e74696e67 "preventsprinting" -0.23 multiply
attribute @s[predicate=!tf2:sprinting] minecraft:generic.movement_speed modifier remove 70726576-656e-7473-7072-696e74696e67