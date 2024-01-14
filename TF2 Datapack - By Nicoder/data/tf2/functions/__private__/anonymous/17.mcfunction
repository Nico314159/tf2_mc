execute summon marker run function tf2:__private__/anonymous/16
execute if score $diff_X tf2.var matches -550..550 if score $diff_Y tf2.var matches -2050..250 if score $diff_Z tf2.var matches -550..550 run tag @s add tf2.hit
execute if score $next_diff_X tf2.var matches -550..550 if score $next_diff_Y tf2.var matches -2050..250 if score $next_diff_Z tf2.var matches -550..550 run tag @s add tf2.hit