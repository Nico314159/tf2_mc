scoreboard players operation @s xrroou1m8_p_join = $__global__ xrroou1m8_p_join
execute if score $Settings.show_debug_messages tf2.var matches 1.. run tellraw @a ["",{"text":"<Debug> ","bold":true,"type":"text"},{"text":"Player ","bold":false,"type":"text"},{"selector":"@s","type":"selector"},{"text":" has logged in at "},{"score":{"name":"$__global__","objective":"0008it54g_p_join"},"type":"score"},{"text":" ticks gametime."}]
tp @s[tag=!tf2.admin] 30 25 25 0 0
gamemode adventure @s[tag=!tf2.admin]
clear @s[tag=!tf2.admin]
item replace entity @s[tag=!tf2.admin] hotbar.8 with written_book[written_book_content={pages:[["",{"text":"Welcome to Minecraft TF2!","bold":true,"underlined":true,"color":"gold"},"\n","\n",{"text":"[Start Playing] ","bold":true,"underlined":true,"color":"dark_gray","click_event":{"action":"change_page","page":3b},"hover_event":{"action":"show_text","value":["Choose a gamemode and jump right into the action!"]}},"\n","\n",{"text":"[Tutorial Missions] ","bold":true,"underlined":true,"color":"gray","click_event":{"action":"change_page","page":2b},"hover_event":{"action":"show_text","value":["A singleplayer experience to improve your skills with the various classes and weapons"]}},"\n","\n",{"text":"[Player Stats]","bold":true,"underlined":true,"color":"gray","hover_event":{"action":"show_text","value":[{"text":"View global counters like total kills,  captures,  etc.","color":"white"}]}},"\n"],["",{"text":"Select a Mission: ","underlined":true},"\n","\n",{"text":"Heist (Spy)","hover_event":{"action":"show_text","value":["Sneak into the base under cover of darkness! Manage your cloak carefully, or else you will be spotted by cameras."]}},"\n",{"text":"Headhunt (Sniper)","hover_event":{"action":"show_text","value":["Hit the floating heads in order to open pathways leading to the treasure room"]}},"\n",{"text":"Racecourse (Scout)","hover_event":{"action":"show_text","value":["Try to avoid the obstacles and get through the level as fast as possible. Hint: you'll need to use double jumps!"]}},"\n",{"text":"Rocket Jump stuff","hover_event":{"action":"show_text","value":[""]}},"\n",{"text":"Bullseye (any class)","hover_event":{"action":"show_text","value":["Try to hit as many targets as you can before the timer runs out!"]}},"\n",{"text":"Some other stuff idk","hover_event":{"action":"show_text","value":[""]}}],["",{"text":"Queue for a game: ","underlined":true},"\n","\n","\n",{"text":"[Competitive Mode]","bold":true,"color":"dark_green","click_event":{"action":"change_page","page":6b},"hover_event":{"action":"show_text","value":[{"text":"\u2022 Max players: 9 v 9 ","color":"dark_green"},"\n",{"text":"\u2022 Random bullet spread: NO","color":"dark_green"},"\n",{"text":"\u2022 Gamemode / map pool: LIMITED","color":"dark_green"},"\n",{"text":"\u2022 Matchmaking system: YES","color":"dark_green"}]}},"\n","\n","\n",{"text":"[Casual Mode]","bold":true,"color":"dark_aqua","click_event":{"action":"change_page","page":9b},"hover_event":{"action":"show_text","value":[{"text":"\u2022 Max players: 12 v 12","color":"dark_aqua"},"\n",{"text":"\u2022 Random bullet spread: YES","color":"dark_aqua"},"\n",{"text":"\u2022 Gamemode / map pool: ALL","color":"dark_aqua"},"\n",{"text":"\u2022 Matchmaking system: YES","color":"dark_aqua"},"\n",{"text":"\u2022 Team autobalance: YES","color":"dark_aqua"}]}},"\n","\n","\n",{"text":"[Chaos Mode]","bold":true,"color":"dark_red","click_event":{"action":"change_page","page":12b},"hover_event":{"action":"show_text","value":[{"text":"\u2022 Max players: 20 v 20","color":"dark_red"},"\n",{"text":"\u2022 Random bullet spread: YES","color":"dark_red"},"\n",{"text":"\u2022 Gamemode / map pool: ALL","color":"dark_red"},"\n",{"text":"\u2022 Matchmaking system: NO","color":"dark_red"},"\n","\u2022 Team autobalance: NO"]}}],[""],[""],["","\n",{"text":"You have selected:","underlined":true,"color":"dark_gray"},"\n",{"text":"Competitive Mode","bold":true,"color":"dark_green"},"\n","\n",{"text":"Is this correct?","color":"black"},"\n",{"text":"[Yup]","color":"dark_green","click_event":{"action":"run_command","command":"/trigger tf2.queue_type set 1"}},{"text":" [Nope]","color":"gray","click_event":{"action":"change_page","page":3b}}],[""],[""],["","\n",{"text":"You have selected:","underlined":true,"color":"dark_gray"},"\n",{"text":"Casual Mode","bold":true,"color":"dark_aqua"},"\n","\n",{"text":"Is this correct?","color":"black"},"\n",{"text":"[Yup]","color":"dark_aqua","click_event":{"action":"run_command","command":"/trigger tf2.queue_type set 2"}},{"text":" [Nope]","color":"gray","click_event":{"action":"change_page","page":3b}}],[""],[""],["","\n",{"text":"You have selected:","underlined":true,"color":"dark_gray"},"\n",{"text":"Chaos Mode","bold":true,"color":"dark_red"},"\n","\n",{"text":"Is this correct?","color":"black"},"\n",{"text":"[Yup]","color":"dark_red","click_event":{"action":"run_command","command":"/trigger tf2.queue_type set 3"}},{"text":" [Nope]","color":"gray","click_event":{"action":"change_page","page":3b}}]],title:"Navigator",author:LazyHarpSeal}]
execute unless score @s tf2.uuid.0 = @s tf2.uuid.0 store result score @s tf2.uuid.0 run data get entity @s UUID[0]
execute unless score @s tf2.uuid.1 = @s tf2.uuid.1 store result score @s tf2.uuid.1 run data get entity @s UUID[1]
execute unless score @s tf2.uuid.2 = @s tf2.uuid.2 store result score @s tf2.uuid.2 run data get entity @s UUID[2]
execute unless score @s tf2.uuid.3 = @s tf2.uuid.3 store result score @s tf2.uuid.3 run data get entity @s UUID[3]
scoreboard players enable @s tf2.queue_type
scoreboard players enable @s controls
scoreboard players enable @s autoreload
execute store result score @s tf2.batch_number store result score @s tf2.queue_type store result score @s controls run scoreboard players set @s autoreload 0
scoreboard players add $global tf2.player.id 1
execute unless score @s tf2.player.id = @s tf2.player.id run scoreboard players operation @s tf2.player.id = $global tf2.player.id
execute as @e[type=marker,tag=tf2.in_use] run function tf2:timer/resync_visibility
effect give @a[tag=!tf2.allowed_to_sprint,scores={tf2.food=7..}] hunger 1000 255 true
effect give @s minecraft:resistance infinite 4 true
effect clear @s invisibility
attribute @s minecraft:attack_damage base set 0
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:movement_speed modifier remove tf2:slow_while_revving
attribute @s minecraft:block_interaction_range base set 4.5
attribute @s minecraft:step_height base set 1
team leave @s
tag @s remove tf2.in_queue
tag @s remove tf2.allowed_to_sprint
tag @s remove tf2.is_playing
tag @s remove tf2.random_spread
tag @s remove tf2.random_crits
tag @s remove tf2.free_vote
tag @s remove tf2.can_be_autobalanced
tag @s remove tf2.scoped
tag @s remove tf2.on_point
tag @s remove tf2.can_cap
tag @s remove tf2.can_defend
tag @s remove tf2.dead
tag @s remove tf2.disguised
scoreboard players reset @s tf2.class
scoreboard players reset @s tf2.health
scoreboard players reset @s tf2.max_health
scoreboard players reset @s tf2.team
scoreboard players reset @s tf2.respawn_timer
scoreboard players reset @s tf2.time_idle
scoreboard players reset @s tf2.attack_delay
scoreboard players reset @s tf2.reload_delay
scoreboard players reset @s tf2.consecutive_reload
scoreboard players reset @s tf2.current_slot
scoreboard players reset @s tf2.last_slot
scoreboard players reset @s tf2.time_revved
scoreboard players reset @s tf2.rev_threshold
scoreboard players reset @s tf2.time_scoped
scoreboard players reset @s tf2.elytra_detect
scoreboard players reset @s tf2.fall
scoreboard players reset @s tf2.fall_y
scoreboard players reset @s tf2.fall_y1
scoreboard players reset @s tf2.fall_y2
scoreboard players reset @s tf2.fall_y3
tellraw @s ["",{"text":"Control Scheme:\n","underlined":true,"type":"text"},{"text":"Main Attack (both guns & melee) = ","color":"gray","type":"text"},{"color":"white","bold":true,"keybind":"key.use","type":"keybind"},{"text":"\n","color":"white","bold":true},{"text":"Alt Fire (zoom-in, revving, etc) = ","color":"gray","type":"text"},{"color":"white","bold":true,"keybind":"key.swapOffhand","type":"keybind"},{"text":"\n","color":"white","bold":true},{"text":"Reload = ","color":"gray","type":"text"},{"color":"white","bold":true,"keybind":"key.drop","type":"keybind"},{"text":" ","color":"white","bold":true},{"text":"[toggle autoreload]\n","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger autoreload"},"type":"text"},{"text":"You ","color":"gray","type":"text"},{"text":"NEVER ","bold":true,"italic":true,"color":"red","type":"text"},{"text":"need to press ","color":"gray","type":"text"},{"color":"white","bold":true,"keybind":"key.attack","type":"keybind"}]
tellraw @s ["",{"text":"To see this message again, type ","color":"gray","type":"text"},{"text":"/trigger controls ","bold":true,"color":"gray","type":"text"},{"text":"in chat at any time.","bold":false,"color":"gray","type":"text"}]