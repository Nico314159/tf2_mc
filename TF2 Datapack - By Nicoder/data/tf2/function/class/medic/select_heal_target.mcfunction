scoreboard players operation $current tf2.team = @s tf2.team
scoreboard players operation $current tf2.batch_number = @s tf2.batch_number
tag @s add self
execute as @a[tag=!self,distance=..8.572] if score @s tf2.batch_number = $current tf2.batch_number if score @s tf2.team = $current tf2.team run tag @s add tf2.valid_heal_target
execute as @a[tag=!self,distance=..8.572] if score @s tf2.class matches 1 if score @s tf2.disguise.team = $current tf2.team run tag @s add tf2.valid_heal_target
tag @s remove self
function retina:traverse/setup
scoreboard players reset @s tf2.heal_target
scoreboard players operation @s tf2.heal_target = @e[type=#tf2:player_like,tag=tf2.valid_heal_target,scores={retina.hit=1..}] tf2.player.id
execute unless score @s tf2.heal_target = @s tf2.heal_target run scoreboard players operation @s tf2.heal_target = @e[type=#tf2:player_like,tag=tf2.valid_heal_target,sort=nearest,limit=1] tf2.player.id
tag @e remove tf2.valid_heal_target