execute if score $Settings.show_debug_messages tf2.var matches 1.. run tellraw @a ["",{"text":"<Debug> ","bold":true,"type":"text"},{"text":"Player ","bold":false,"type":"text"},{"selector":"@s","type":"selector"},{"text":" has logged in at "},{"score":{"name":"$__global__","objective":"0008it54g_p_join"},"type":"score"},{"text":" ticks gametime."}]
tp @s[tag=!tf2.admin] 30 25 25 0 0
gamemode adventure @s[tag=!tf2.admin]
clear @s[tag=!tf2.admin]
item replace entity @s[tag=!tf2.admin] hotbar.8 with written_book{pages:['["", {"text": "Welcome to Minecraft TF2!", "bold": true, "underlined": true, "color": "gold"}, "\\n", "\\n", {"text": "[Start Playing] ", "bold": true, "underlined": true, "color": "dark_gray", "clickEvent": {"action": "change_page", "value": "3"}, "hoverEvent": {"action": "show_text", "contents": ["Choose a gamemode and jump right into the action!"]}}, "\\n", "\\n", {"text": "[Tutorial Missions] ", "bold": true, "underlined": true, "color": "gray", "clickEvent": {"action": "change_page", "value": "2"}, "hoverEvent": {"action": "show_text", "contents": ["A singleplayer experience to improve your skills with the various classes and weapons"]}}, "\\n", "\\n", {"text": "[Player Stats]", "bold": true, "underlined": true, "color": "gray", "hoverEvent": {"action": "show_text", "contents": [{"text": "View global counters like total kills,  captures,  etc.", "color": "white"}]}}, "\\n"]','["", {"text": "Select a Mission: ", "underlined": true}, "\\n", "\\n", {"text": "Heist (Spy)", "hoverEvent": {"action": "show_text", "contents": ["Sneak into the base under cover of darkness! Manage your cloak carefully,  or else you will be spotted by cameras."]}}, "\\n", {"text": "Headhunt (Sniper)", "hoverEvent": {"action": "show_text", "contents": ["Hit the floating heads in order to open pathways leading to the treasure room"]}}, "\\n", {"text": "Racecourse (Scout)", "hoverEvent": {"action": "show_text", "contents": ["Try to avoid the obstacles and get through the level as fast as possible. Hint: you\'ll need to use double jumps!"]}}, "\\n", {"text": "Rocket Jump stuff", "hoverEvent": {"action": "show_text", "contents": [""]}}, "\\n", {"text": "Bullseye (any class)", "hoverEvent": {"action": "show_text", "contents": ["Try to hit as many targets as you can before the timer runs out!"]}}, "\\n", {"text": "Some other stuff idk", "hoverEvent": {"action": "show_text", "contents": [""]}}]','["", {"text": "Queue for a game: ", "underlined": true}, "\\n", "\\n", "\\n", {"text": "[Competitive Mode]", "bold": true, "color": "dark_green", "clickEvent": {"action": "change_page", "value": "6"}, "hoverEvent": {"action": "show_text", "contents": [{"text": "• Max players: 9 v 9 ", "color": "dark_green"}, "\\n", {"text": "• Random bullet spread: NO", "color": "dark_green"}, "\\n", {"text": "• Gamemode / map pool: LIMITED", "color": "dark_green"}, "\\n", {"text": "• Matchmaking system: YES", "color": "dark_green"}]}}, "\\n", "\\n", "\\n", {"text": "[Casual Mode]", "bold": true, "color": "dark_aqua", "clickEvent": {"action": "change_page", "value": "9"}, "hoverEvent": {"action": "show_text", "contents": [{"text": "• Max players: 12 v 12", "color": "dark_aqua"}, "\\n", {"text": "• Random bullet spread: YES", "color": "dark_aqua"}, "\\n", {"text": "• Gamemode / map pool: ALL", "color": "dark_aqua"}, "\\n", {"text": "• Matchmaking system: YES", "color": "dark_aqua"}, "\\n", {"text": "• Team autobalance: YES", "color": "dark_aqua"}]}}, "\\n", "\\n", "\\n", {"text": "[Chaos Mode]", "bold": true, "color": "dark_red", "clickEvent": {"action": "change_page", "value": "12"}, "hoverEvent": {"action": "show_text", "contents": [{"text": "• Max players: 20 v 20", "color": "dark_red"}, "\\n", {"text": "• Random bullet spread: YES", "color": "dark_red"}, "\\n", {"text": "• Gamemode / map pool: ALL", "color": "dark_red"}, "\\n", {"text": "• Matchmaking system: NO", "color": "dark_red"}, "\\n", "• Team autobalance: NO"]}}]','[""]','[""]','["", "\\n", {"text": "You have selected:", "underlined": true, "color": "dark_gray"}, "\\n", {"text": "Competitive Mode", "bold": true, "color": "dark_green"}, "\\n", "\\n", {"text": "Is this correct?", "color": "black"}, "\\n", {"text": "[Yup]", "color": "dark_green", "clickEvent": {"action": "run_command", "value": "/trigger tf2.queue_type set 1"}}, {"text": " [Nope]", "color": "gray", "clickEvent": {"action": "change_page", "value": "3"}}]','[""]','[""]','["", "\\n", {"text": "You have selected:", "underlined": true, "color": "dark_gray"}, "\\n", {"text": "Casual Mode", "bold": true, "color": "dark_aqua"}, "\\n", "\\n", {"text": "Is this correct?", "color": "black"}, "\\n", {"text": "[Yup]", "color": "dark_aqua", "clickEvent": {"action": "run_command", "value": "/trigger tf2.queue_type set 2"}}, {"text": " [Nope]", "color": "gray", "clickEvent": {"action": "change_page", "value": "3"}}]','[""]','[""]','["", "\\n", {"text": "You have selected:", "underlined": true, "color": "dark_gray"}, "\\n", {"text": "Chaos Mode", "bold": true, "color": "dark_red"}, "\\n", "\\n", {"text": "Is this correct?", "color": "black"}, "\\n", {"text": "[Yup]", "color": "dark_red", "clickEvent": {"action": "run_command", "value": "/trigger tf2.queue_type set 3"}}, {"text": " [Nope]", "color": "gray", "clickEvent": {"action": "change_page", "value": "3"}}]'],title:"Navigator",author:LazyHarpSeal}
execute store result storage tf2.__temp__:index i int 1 run scoreboard players get @s tf2.batch_number
scoreboard players enable @s tf2.queue_type
scoreboard players enable @s controls
execute store result score @s tf2.batch_number store result score @s tf2.queue_type run scoreboard players set @s controls 0
function tf2:timer/show with storage tf2.__temp__:index
effect give @a[tag=!tf2.allowed_to_sprint,scores={tf2.food=7..}] hunger 1000 255 true
effect give @s minecraft:resistance infinite 4 true
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.movement_speed base set 0.1
attribute @s minecraft:generic.movement_speed modifier remove 736c6f77-7768-696c-6572-657676696e67
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
tag @s remove tf2.unable_to_cap
tag @s remove tf2.dead
scoreboard players reset @s tf2.class
scoreboard players reset @s tf2.health
scoreboard players reset @s tf2.max_health
scoreboard players reset @s tf2.team
scoreboard players reset @s tf2.respawn_timer
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
tellraw @s ["",{"text":"Control Scheme:\n","underlined":true,"type":"text"},{"text":"Main Attack (both guns & melee) = ","color":"gray","type":"text"},{"color":"white","bold":true,"keybind":"key.use","type":"keybind"},{"text":"\n","color":"white","bold":true},{"text":"Alt Fire (zoom-in, revving, etc) = ","color":"gray","type":"text"},{"color":"white","bold":true,"keybind":"key.swapOffhand","type":"keybind"},{"text":"\n","color":"white","bold":true},{"text":"Reload = ","color":"gray","type":"text"},{"color":"white","bold":true,"keybind":"key.drop","type":"keybind"},{"text":"\n","color":"white","bold":true},{"text":"You ","color":"gray","type":"text"},{"text":"NEVER ","bold":true,"italic":true,"color":"red","type":"text"},{"text":"need to press ","color":"gray","type":"text"},{"color":"white","bold":true,"keybind":"key.attack","type":"keybind"}]
tellraw @s ["",{"text":"To see this message again, type ","color":"gray","type":"text"},{"text":"/trigger controls ","bold":true,"color":"gray","type":"text"},{"text":"in chat at any time.","bold":false,"color":"gray","type":"text"}]
scoreboard players operation @s 0008it54g_p_join = $__global__ 0008it54g_p_join