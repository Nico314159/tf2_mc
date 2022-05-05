execute as @s at @s store result score @s tumble_X run data get entity @s Pose.Head[0]
scoreboard players add @s tumble_X 8
execute as @s at @s store result entity @s Pose.Head[0] float 1 run scoreboard players get @s tumble_X

# execute as @s at @s store result score @s tumble_Z run data get entity @s Pose.Head[2]
scoreboard players add @s tumble_Z 7
# execute as @s at @s store result entity @s Pose.Head[2] float 1 run scoreboard players get @s tumble_Z

