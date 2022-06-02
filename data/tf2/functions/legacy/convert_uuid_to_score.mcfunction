data modify storage tf2.storage entityUUID set from entity @s UUID
execute as @e store result score @s converted-uuid1 run data get storage tf2.storage entityUUID
execute as @e store result score @s converted-uuid1 run data get storage tf2.storage entityUUID
execute as @e store result score @s converted-uuid2 run data get storage tf2.storage entityUUID
execute as @e store result score @s converted-uuid3 run data get storage tf2.storage entityUUID
tag @s add uuid_converted
# data remove storage tf2.storage entityUUID
