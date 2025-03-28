title @s actionbar ["",{"text":"\u2764 Health: 0 / ","color":"red","type":"text"},{"score":{"name":"@s","objective":"tf2.max_health"},"color":"red","type":"score"}]
title @s times 0 3 3
spawnpoint @s ~ ~ ~
tag @s add tf2.dead
gamemode spectator @s
execute if score @s tf2.class matches 5 run function tf2:class/demoman/erase_all_stickybombs
execute store result storage tf2:index i int 1 run scoreboard players get @s tf2.batch_number
function tf2:__private__/anonymous/35 with storage tf2:index
execute at @s[scores={tf2.class=1..9}] run summon axolotl ~ ~ ~ {attributes:[{id:"minecraft:movement_speed",base:0.0d},{id:"minecraft:jump_strength",base:0.0d},{id:"minecraft:scale",base:0.0625d}],Invulnerable:1b,Silent:1b,Tags:["tf2.no_respawn","tf2.new","retina.ignore"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],Passengers:[{id:"minecraft:item",NoGravity:0b,Invulnerable:1b,Tags:["tf2.pickup","tf2.ammo_pack","tf2.no_respawn"],Age:-32768s,PickupDelay:32767s,Item:{id:"minecraft:white_dye",components:{"minecraft:item_model":"tf2:pickup/ammo","minecraft:custom_model_data":{floats:[2f]}}}}]}
execute as @e[type=axolotl,tag=tf2.new,tag=tf2.no_respawn] store result score @s tf2.batch_number on passengers store result score @s tf2.batch_number run data get storage tf2:index i 1.0
execute as @e[type=axolotl,tag=tf2.new,tag=tf2.no_respawn] run team join player_motion.no_collide
execute as @e[type=axolotl,tag=tf2.new,tag=tf2.no_respawn] run tag @s remove tf2.new