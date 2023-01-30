#> tf2:disable_sprint
#
# Prevents players from sprinting by giving them an attribute modifier that cancels it out exactly.
#
# @within tf2:tick
# @context all players without a specific tag
# @reads
#	predicate tf2:sprinting

execute if predicate tf2:sprinting run attribute @s minecraft:generic.movement_speed modifier add 70726576-656e-7473-7072-696e74696e67 "preventsprinting" -0.23 multiply
execute unless predicate tf2:sprinting run attribute @s minecraft:generic.movement_speed modifier remove 70726576-656e-7473-7072-696e74696e67