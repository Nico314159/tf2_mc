tag @s remove tf2.new
scoreboard players set __if_else__ tf2.var 0
execute unless score @s tf2.sentry.target = @s tf2.sentry.target run function tf2:__private__/if_else/9
execute if score __if_else__ tf2.var matches 0 at @s run function tf2:building/sentry/track_target
scoreboard players remove @s[scores={tf2.attack_delay=1..}] tf2.attack_delay 1000