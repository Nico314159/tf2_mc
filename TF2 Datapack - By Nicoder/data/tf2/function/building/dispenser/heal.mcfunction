scoreboard players operation @s tf2.health += $health tf2.var
execute if score $health tf2.var matches 1.. run tag @s remove tf2.on_fire
function tf2:player/clamp_health
scoreboard players operation $add_amount tf2.var = @s tf2.primary_maxAmmo
scoreboard players operation $add_amount tf2.var += @s tf2.primary_maxClip
scoreboard players operation $add_amount tf2.var *= $ammo tf2.var
scoreboard players add $add_amount tf2.var 99
scoreboard players operation $add_amount tf2.var /= 100 tf2.const
scoreboard players operation $clip_space tf2.var = @s tf2.primary_maxClip
scoreboard players operation $clip_space tf2.var -= @s tf2.primary_clip
scoreboard players operation $clip_space tf2.var < $add_amount tf2.var
scoreboard players operation @s tf2.primary_clip += $clip_space tf2.var
scoreboard players operation $add_amount tf2.var -= $clip_space tf2.var
scoreboard players operation @s tf2.primary_ammo += $add_amount tf2.var
scoreboard players operation @s tf2.primary_ammo < @s tf2.primary_maxAmmo
scoreboard players operation $add_amount tf2.var = @s tf2.secondary_maxAmmo
scoreboard players operation $add_amount tf2.var += @s tf2.secondary_maxClip
scoreboard players operation $add_amount tf2.var *= $ammo tf2.var
scoreboard players add $add_amount tf2.var 99
scoreboard players operation $add_amount tf2.var /= 100 tf2.const
scoreboard players operation $clip_space tf2.var = @s tf2.secondary_maxClip
scoreboard players operation $clip_space tf2.var -= @s tf2.secondary_clip
scoreboard players operation $clip_space tf2.var < $add_amount tf2.var
scoreboard players operation @s tf2.secondary_clip += $clip_space tf2.var
scoreboard players operation $add_amount tf2.var -= $clip_space tf2.var
scoreboard players operation @s tf2.secondary_ammo += $add_amount tf2.var
scoreboard players operation @s tf2.secondary_ammo < @s tf2.secondary_maxAmmo
execute store result score $full_cloak tf2.var run data get entity @s[scores={tf2.class=1}] equipment.offhand.components.minecraft:custom_data.attributes.cloak_recharge 20
scoreboard players operation $add_amount tf2.var = $cloak tf2.var
scoreboard players operation $add_amount tf2.var *= $full_cloak tf2.var
scoreboard players add $add_amount tf2.var 99
scoreboard players operation $add_amount tf2.var /= 100 tf2.const
scoreboard players operation @s[scores={tf2.class=1}] tf2.cloak += $add_amount tf2.var
scoreboard players operation @s[scores={tf2.class=1}] tf2.cloak < $full_cloak tf2.var
scoreboard players operation @s[scores={tf2.class=8}] tf2.metal += $metal tf2.var
scoreboard players operation @s[scores={tf2.class=8}] tf2.metal < 200 tf2.const