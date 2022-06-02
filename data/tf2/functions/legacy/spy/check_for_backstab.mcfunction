execute as @a[advancements={tf2:attempt_backstab=true},limit=1] run tag @s add backstabber
execute as @a[advancements={tf2:get_hurt=true},limit=1] run tag @s add backstab_victim

scoreboard players operation #difference trueFacing = @a[tag=backstabber,limit=1] trueFacing
scoreboard players operation #difference trueFacing -= @a[tag=backstab_victim,limit=1] trueFacing

execute unless score #difference trueFacing matches -269..-91 unless score #difference trueFacing matches 91..269 as @a[tag=backstab_victim,limit=1] run function tf2:legacy/spy/do_backstab_damage

execute as @a run tag @s remove backstabber
execute as @a run tag @s remove backstab_victim

execute as @a[advancements={tf2:attempt_backstab=true}] run advancement revoke @s only tf2:attempt_backstab
execute as @a[advancements={tf2:get_hurt=true}] run advancement revoke @s only tf2:get_hurt





